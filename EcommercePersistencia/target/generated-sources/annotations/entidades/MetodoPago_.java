package entidades;

import entidades.TipoMetodoPago;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-14T15:22:04", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(MetodoPago.class)
public class MetodoPago_ { 

    public static volatile SingularAttribute<MetodoPago, TipoMetodoPago> tipo;
    public static volatile SingularAttribute<MetodoPago, Double> monto;
    public static volatile SingularAttribute<MetodoPago, Date> fechaHora;
    public static volatile SingularAttribute<MetodoPago, Long> id;

}