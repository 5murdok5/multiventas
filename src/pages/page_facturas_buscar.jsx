import React from 'react'
import DivDash from '../components/comp_cont_dashboard'
import Titles from '../components/comp_dash_titles'
import VentasRecientes from '../components/comp_resent_sales'

const FacturasBuscar = () => {
  return (
    <DivDash>
    <Titles
        title="Buscar Facturas"
        description="Registro de informacion de ventas realizadas"
      />
      <div className='row'>
      <div className="col-12">
            <VentasRecientes/>
          </div>
      </div>
    </DivDash>
  )
}

export default FacturasBuscar