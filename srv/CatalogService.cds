namespace s4hext.srv;

using { OP_API_SALES_ORDER_SRV_0001 as spiderman }
from './external/OP_API_SALES_ORDER_SRV_0001';

@path:'/CatalogService'
service CatalogService {

    entity MySalesOrder as projection on spiderman.A_SalesOrder;

}