import ShopServlets.*;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by vinspi on 27/01/17.
 */
public class ShopView {
    private List<ItemView> listPackView = new LinkedList<>();
    private List<ItemView> listBoostView = new LinkedList<>();
    private List<ItemView> listSkinMapView = new LinkedList<>();
    private List<ItemView> listSkinCartonView = new LinkedList<>();

    public void addPackView(PackView packView){
        listPackView.add(packView);
    }

    public void addBoostView(BoostView boostView){
        listBoostView.add(boostView);
    }

    public void addSkinMapView(SkinMapView skinMapView){
        listSkinMapView.add(skinMapView);
    }

    public void addSkinCartonView(SkinCartonView skinCartonView){ listSkinCartonView.add(skinCartonView); }

}
