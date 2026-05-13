package entidades;

import entidades.Carrito;
import entidades.Producto;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-12T18:17:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(DetallesCarrito.class)
public class DetallesCarrito_ { 

    public static volatile SingularAttribute<DetallesCarrito, Long> id;
    public static volatile SingularAttribute<DetallesCarrito, Producto> producto;
    public static volatile SingularAttribute<DetallesCarrito, Carrito> carrito;
    public static volatile SingularAttribute<DetallesCarrito, Integer> cantidadProducto;
    public static volatile SingularAttribute<DetallesCarrito, Float> importe;

}