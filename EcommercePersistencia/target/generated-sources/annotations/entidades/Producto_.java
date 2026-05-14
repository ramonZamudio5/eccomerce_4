package entidades;

import entidades.DetallesPedido;
import entidades.Disponibilidad;
import entidades.Reseña;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-14T15:22:04", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Producto.class)
public class Producto_ { 

    public static volatile SingularAttribute<Producto, String> descripcion;
    public static volatile SingularAttribute<Producto, Double> precio;
    public static volatile SingularAttribute<Producto, Disponibilidad> disponibilidad;
    public static volatile SingularAttribute<Producto, String> especificacionesTecnicas;
    public static volatile ListAttribute<Producto, Reseña> resenias;
    public static volatile SingularAttribute<Producto, Integer> valoracion;
    public static volatile SingularAttribute<Producto, Long> id;
    public static volatile ListAttribute<Producto, DetallesPedido> detallesPedido;
    public static volatile SingularAttribute<Producto, Integer> stock;
    public static volatile SingularAttribute<Producto, String> rutaImagen;
    public static volatile SingularAttribute<Producto, String> nombre;

}