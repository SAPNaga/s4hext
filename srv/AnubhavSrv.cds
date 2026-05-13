namespace s4hext.anubhav;

using { NorthWind as superman } from './external/NorthWind';

service AnubhavSrv @(path: 'AnubhavSrv') {
    
    entity ExternalProducts as projection on superman.Products;

}
