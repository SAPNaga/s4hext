const cds = require('@sap/cds')

module.exports = class AnubhavSrv extends cds.ApplicationService { init() {

  const { ExternalProducts } = cds.entities('s4hext.anubhav.AnubhavSrv')

  this.on ('READ', ExternalProducts, async (req) => {
    const service = await cds.connect.to('NorthWind');
    return service.tx(req).run(req.query);
  })


  return super.init()
}}
