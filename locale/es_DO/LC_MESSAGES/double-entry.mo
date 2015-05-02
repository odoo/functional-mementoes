��    o      �  �         `	  ]   a	     �	     �	  '   �	     
  "   %
     H
  !   h
      �
     �
  "   �
  "   �
  '        7  "   V     y  	   �  �   �  :   Q  �   �  ~     0   �  �   �     �     �     �     �     �                     &  "   3     V     e  	   u  !        �     �     �  B   �          )     :  0   T     �  	   �  9   �  b   �     E     Y  f   w     �  
   �     �             
        $     9     A     F     ^     f     t  O   �  3   �       �         �     �     �  &        2     I     b  <   s     �  !   �  !   �  
     �        �     �     �  	     
          U   #  X   y     �  1   �       K     =   i     �     �     �     �  !   �  z     	   �  !   �  8   �  /   �     )  
   ;  -   F  4   t  U   �  \  �  l   \     �     �  0   �  "     '   @  "   h  &   �  "   �  "   �  %   �  )     4   H  %   }  /   �     �     �  �   �  C   �  �     �   �  /   I     y   	   �!     �!     �!     �!     �!     �!     �!  	   �!  &   �!  %   &"     L"     ]"     n"  '   v"     �"     �"     �"  U   �"     6#  �   O#  !   '$  .   I$     x$  
   �$  <   �$  {   �$     Z%  !   y%  t   �%     &     (&     4&     <&     C&     K&     ^&     u&     ~&     �&     �&     �&     �&  P   �&  6   '     D'  �   ]'  (   2(  	   [(     e(  /   |(  #   �(     �(     �(  S   )     X)  (   h)  &   �)     �)  �   �)      �*     �*     �*  
   �*  
   �*     �*  g   �*  S   e+     �+  7   �+     ,  \   ,  B   l,     �,  �   �,     _-  (   s-  '   �-  �   �-     R.  #   a.  =   �.  5   �.     �.  	   /  :   /  @   V/  S   �/         S           V       $   ]       L   ;   k      i   `       a      J   j   [           Y              C   8   :          ,      '      f               M              -             "      X       \          /   Q       5   Z   6                       @   c   3   e           o   %   _   1   W   d       g   F   I                  2   9   D   b      .   ^      4   B   (       m          O      =   
   E   h         N          P       ?      #   G   >   R                  7      n   *       &          <   U   H      K   l   	   0   )       !   A       +   T    *Procurement rules* describe how procurements on specific locations should be fulfilled e.g.: ... 1 Bicycle: Input → Stock 1 Bicycle: Inventory Loss → Warehouse 1 Bicycle: Output → Customer 1 Bicycle: Packing Zone → Output 1 Bicycle: Production → Stock 1 Bicycle: Stock → Packing Zone 1 Bicycle: Supplier → Customer 1 Bicycle: Supplier → Input 1 Bicycle: Transit → Warehouse 2 1 Bicycle: Warehouse 1 → Transit 1 Bicycle: Warehouse → Inventory Loss 1 Bicycle: Warehouse → Scrap 1 Bike Frame: Stock → Production 2 Wheels: Stock → Production A Product A double-entry inventory has no stock input, output (disparition of products) or transformation. Instead, all operations are stock moves between locations (possibly virtual). A new procurement is created on the rule's source location A procurement is a request for a specific quantity of products to a specific location. They can be created manually or automatically triggered by: A procurement is created at the customer location for every product ordered by the customer (you have to deliver the customer) A procurement is created at the rule's location. A sale order creates a procurement group so that pickings and delivery orders of the same order are grouped. But you can define specific groups on reordering rules too. (e.g. to group purchases of specific products together) Analysis Broken Product (scrapped) Client Delivery Configurarion: Configuration Configuration: Confirmation: Consume: Cross-Docks: Customer: on the sale order itself Delivery Order Delivery Order: Delivery: Double-Entry Inventory Management Drop-shipping Effect Extra products in inventory For each inventory location, multiple data points can be analysed: Gate A → Customer Input → Output Input → Quality Control Input: "destination" field on the purchase order Inter-Warehouse transfer Inventory Inventory Loss: "Inventory Location" field on the product Inventory analysis can use products count or products value (= number of products * product cost). Minimum Stock Rules Missing products in inventory Moves are grouped within the same document type if their procurement group and locations are the same. New sale orders Operations Order: Output → Customer Pack Pack List: Pack Zone → Gate A Packing Pick Pick Zone → Pack Zone Picking Picking List: Procurement Groups Procurement Location: on the customer, field “Customer Location” (property) Procurement location: on the rule, field "Location" Procurement rules Procurement rules are grouped in routes. Routes define paths the product must follow. Routes may be applicable or not, depending on the products, sales order lines, warehouse,... Procurements & Procurement Rules Produce: Product Category Product Route Example: Quality Control Product lands in Input Product lands in Transit Production Order Production: on the product form, field "Production Location" Purchase Order Push 1: Input → Quality Control Push 2: Quality Control → Stock Push Rules Push rules trigger when products enter a specific location. They automatically move the product to a new location. Whether a push rule can be used depends on applicable routes. Push: Transit → Warehouse 2 Quality Control Quality Control → Stock Reception Reception: Routes Routes and rules define inventory moves. For every rule, a document type is provided: Routes that describe how you organize your warehouse should be defined on the warehouse. Sale Order Line Scrap: Scrap Location when creating the scrapping Shipping Stock moves represent the transit of goods and materials between locations. Stock: the location the Manufacturing Order is initiated from Storage: Supplier → Customer Supplier → Input Supplier: on the product form Supplier: purchase order supplier To fulfill a procurement, the system will search for rules belonging to routes that are defined in (by order of priority): Transfer: Warehouse 1: on the transit route Warehouse 2: the location the transfer is initiated from Warehouse Route Example: Pick → Pack → Ship Warehouse Transit Warehouses on the pick+pack+ship route for the warehouse where the product should come from (source location) whether the procurement is :abbr:`MTO (Made To Order)` or :abbr:`MTS (Made To Stock)` Project-Id-Version: Odoo Business 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-05-02 13:55-0400
PO-Revision-Date: 2015-05-02 14:55-0400
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Last-Translator: Eneldo Serrata <eneldoserrata@gmail.com>
Language-Team: 
Language: es_DO
X-Generator: Poedit 1.7.6
 * Contratación reglas * describir cómo deben cumplirse por ejemplo contrataciones en lugares específicos: ... 1 bicicleta: entrada Stock → 1 bicicleta: pérdida → almacén de inventario 1 bicicleta: salida al → cliente 1 bicicleta: zona de empaque → salida 1 bicicleta: producción → Stock 1 bicicleta: Almacen → embalaje zona 1 bicicleta: proveedor → cliente 1 bicicleta: entrada → proveedor 1 bicicleta: tránsito → almacén 2 1 bicicleta: 1 → tránsito del almacén 1 bicicleta: → pérdida de inventario del almacén 1 bicicleta: almacén de chatarra → Cuadro de la 1 bicicleta: Stock → producción 2 ruedas: Stock → producción Un producto Un inventario de la partida doble no tiene entrada de stock, salida (disparition de productos) o transformación. En cambio, todas las operaciones son movimientos de stock entre ubicaciones (posiblemente virtuales). Se crea una nueva contratación en ubicación de origen de la regla Una contratación es una petición para una cantidad determinada de productos en una ubicación específica. Pueden crear manualmente o automáticamente desencadenada por: Una contratación se crea en la ubicación del cliente para cada producto pedido por el cliente (tienes para entregar al cliente) Se crea una contratación en lugar de la regla. Una orden de venta crea un grupo de adquisiciones para que se agrupan una presa y pedidos del mismo orden. Pero se pueden definir grupos específicos sobre la reordenación de las reglas también. (por ejemplo en compras de grupo de productos específicos juntos) Análisis Producto roto (Desguazado) Entrega al cliente Configuracion: Configuración Configuración: Confirmación Consumir: Sin almacenaje intermedio (cross dock) Cliente: en el pedido de venta propio orden de entrega orden de entrega Entrega Gestión de inventario de doble entrada Venta directa (Drop-shipping) Efecto Más productos en inventario Para cada ubicación de inventario, múltiples puntos de datos pueden ser analizados: Un cliente → la puerta Un inventario de la partida doble no tiene entrada de stock, salida (disparition de productos) o transformación. En cambio, todas las operaciones son movimientos de stock entre ubicaciones (posiblemente virtuales). Control de calidad de entrada → Entrada: campo "destino" en la orden de compra Transferencia entre almacenes Inventario Pérdida de inventario: "Inventario" campo sobre el producto Análisis de inventario pueden utilizar productos Conde o productos de valor (= número de productos * coste del producto). Reglas de existencias mínimas Faltantes productos en inventario Movimientos se agrupan dentro del mismo tipo de documento si su grupo de adquisiciones y ubicaciones son las mismas. Nuevos pedidos de venta Operaciones Pedido  Salida Paquete Lista del paquete: Pack zona → puerta A Envasado Recogida Pick zona → Pack Conduce Conduce Grupos de compras Lugar de adquisición: en el cliente, campo "Ubicación del cliente" (propiedad) Lugar de adquisición: en la regla, campo "Ubicación" Reglas de abastecimiento Reglas de contratación se agrupan en las rutas. Rutas definen caminos que debe seguir el producto. Las rutas pueden ser aplicables o no, dependiendo de los productos, las líneas de pedido de ventas, almacén... Contrataciones & reglas de contratación Producir: Categoría de producto Ejemplo de ruta de producto: Control de calidad Producto relacionado con este costo Producto aterriza en tránsito Orden de producción Producción: en el formulario del producto, campo "Localización de la producción" Orden de compra Empuje 1: Control de calidad entrada → Empuje 2: Control de calidad → Stock Reglas push Empuje gatillo reglas cuando los productos entran en una ubicación específica. Se mueve automáticamente el producto a una nueva ubicación. Si puede utilizar una regla de empuje depende de las rutas aplicables. Empuje: Tránsito → almacén 2 Control de calidad Control de calidad Recepción Recepción Rutas Rutas y reglas definen movimientos de inventario. Para cada regla, se proporciona un tipo de documento: Las rutas que describen cómo organizas tu almacén deben definirse en el almacén. Línea pedido de venta Desecho: Chatarra ubicación cuando se crea el desguace Envío Movimientos de stock representan el tránsito de mercancías y materiales entre ubicaciones. Acción: la ubicación de la orden de fabricación se inicia desde Almacenamiento: Podrá editar y validar esta factura rectificativa directamente o mantenerla como borrador, esperando a que el documento sea expedido por su cliente/proveedor. Proveedor → Input Proveedor: en el formulario del producto Proveedor: proveedor de orden de compra Para cumplir con una contratación pública, el sistema buscará las reglas pertenecientes a las rutas definidas en (por orden de prioridad): Transferencia: Almacén 1: en la ruta de tránsito Almacén 2: la ubicación de la transferencia se inicia desde Ejemplo de ruta de almacén: Elegir → Pack → nave Ubicación de tránsito Almacenes en la selección + pack + ruta de la nave para el almacén donde el producto debería provenir de (ubicación de la fuente) Si la adquisición es: abbr: 'MTO (hechas a pedido)' o: abbr: 'MTS (hecha a Stock)' 