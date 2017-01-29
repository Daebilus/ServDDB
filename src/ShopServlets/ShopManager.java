package ShopServlets;

import AccountServlets.AccountManager;
import ShopServlets.ItemView;
import ShopServlets.PackView;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by vinspi on 27/01/17.
 */
public class ShopManager {
    Connection connection = null;

    LinkedList<ItemView> listItem;

    private List<ItemView> listPackView = new LinkedList<>();
    private List<ItemView> listBoostView = new LinkedList<>();
    private List<ItemView> listSkinMapView = new LinkedList<>();
    private List<ItemView> listSkinCartonView = new LinkedList<>();

    public void addPackView(ItemView packView){
        listPackView.add(packView);
    }
    public void addBoostView(ItemView boostView){
        listBoostView.add(boostView);
    }
    public void addSkinMapView(ItemView skinMapView){
        listSkinMapView.add(skinMapView);
    }
    public void addSkinCartonView(ItemView skinCartonView){ listSkinCartonView.add(skinCartonView); }

    public List<ItemView> getListPackView() {
        return listPackView;
    }
    public void setListPackView(List<ItemView> listPackView) {
        this.listPackView = listPackView;
    }

    public List<ItemView> getListBoostView() {
        return listBoostView;
    }
    public void setListBoostView(List<ItemView> listBoostView) {
        this.listBoostView = listBoostView;
    }

    public List<ItemView> getListSkinMapView() {
        return listSkinMapView;
    }
    public void setListSkinMapView(List<ItemView> listSkinMapView) {
        this.listSkinMapView = listSkinMapView;
    }

    public List<ItemView> getListSkinCartonView() {
        return listSkinCartonView;
    }
    public void setListSkinCartonView(List<ItemView> listSkinCartonView) {
        this.listSkinCartonView = listSkinCartonView;
    }

    public LinkedList<ItemView> getAllPackOffer(){

        listItem = new LinkedList<>();

        //IMAGEPACK/DESCRIPTION PACK A RAJOUTER DANS LA DB !!!

        String query = "SELECT prixMonnaieIG, prixMonnaieIRL, id_Pack, descriptionPack, imageMiniaturePack FROM Offre" +
                "JOIN Pack USING(id_pack);";

        ResultSet resultSet = AccountServlets.Manager.getManager().sendRequestQuery(query,connection);
        try {
            while (resultSet.next()){

                listItem.add((new PackView(resultSet.getInt("prixMonnaieIRL"),resultSet.getInt("prixMonnaieIG"),resultSet.getInt("id_Pack"),resultSet.getString("imageMiniaturePack"),resultSet.getString("descriptionPack"))));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        return listItem;
    }
    public LinkedList<ItemView> getAllBoostOffers(){

        listItem = new LinkedList<>();

        String query = "SELECT prixMonnaieIRL, prixMonnaieIRL, id_Boost, imageMiniatureBoost, descriptionBoost FROM Offre " +
                "JOIN OffreBoost USING (id_Offre)" +
                "JOIN Boost USING(id_Boost);";

        ResultSet resultSet = AccountServlets.Manager.getManager().sendRequestQuery(query,connection);
        try {
            while (resultSet.next()){

                listItem.add((new BoostView(resultSet.getInt("prixMonnaieIRL"),resultSet.getInt("prixMonnaieIG"),resultSet.getInt("id_Boost"),resultSet.getString("imageMiniatureBoost"),resultSet.getString("descriptionBoost"))));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        return listItem;
    }
    public LinkedList<ItemView> getAllCartonOffers(){

        listItem = new LinkedList<>();

        String query =  "SELECT prixMonnaieIRL, prixMonnaieIG, id_SkinCartonCarte, imageMiniatureCarton, descriptionCarton FROM Offre JOIN OffreCartonCarte USING (id_Offre)" +
                        "JOIN SkinCartonCarte USING (id_SkinCartonCarte);";
        ResultSet resultSet = AccountServlets.Manager.getManager().sendRequestQuery(query,connection);
        try {
            while (resultSet.next()){
                listItem.add((new SkinCartonView(resultSet.getInt("prixMonnaieIRL"),resultSet.getInt("prixMonnaieIG"),resultSet.getInt("id_SkinCartonCarte"),resultSet.getString("imageMiniatureCarton"),resultSet.getString("descriptionCarton"))));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listItem;
    }
    public LinkedList<ItemView> getAllMapOffers(){

        listItem = new LinkedList<>();

        String query =  "SELECT prixMonnaieIG, prixMonnaieIRL, id_SkinMap, imageMiniatureMap, descriptionMap FROM Offre JOIN OffreMap USING (id_Offre) JOIN Map USING (id_SkinMap);";
        ResultSet resultSet = AccountServlets.Manager.getManager().sendRequestQuery(query,connection);
        try {
            while (resultSet.next()){
                listItem.add((new SkinMapView(resultSet.getInt("prixMonnaieIRL"),resultSet.getInt("prixMonnaieIG"),resultSet.getInt("id_SkinMap"),resultSet.getString("imageMiniatureMap"),resultSet.getString("descriptionMap"))));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listItem;
    }

    public void getAllOffers(){
        setListPackView(getAllPackOffer());
        setListBoostView(getAllBoostOffers());
        setListSkinCartonView(getAllCartonOffers());
        setListSkinMapView(getAllMapOffers());
    }
}
