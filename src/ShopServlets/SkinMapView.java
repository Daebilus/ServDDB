package ShopServlets;

import ShopServlets.ItemView;

/**
 * Created by vinspi on 27/01/17.
 */
public class SkinMapView extends ItemView {
    public SkinMapView(int monnaieIRL, int monnaieIG, int id_element, String image, String description) {
        this.monnaieIRL = monnaieIRL;
        this.monnaieIG = monnaieIG;
        this.id_element = id_element;
        this.image = image;
        this.description  = description;
    }

}
