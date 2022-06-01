import React from 'react'
import CardSales from '../components/comp_Card_sales'
import DivDash from '../components/comp_cont_dashboard'
import Titles from '../components/comp_dash_titles'
import Repostes from '../components/comp_reports'
import VentasRecientes from '../components/comp_resent_sales'

const Ventas = () => {
  return (
    <DivDash>
      <Titles
        title="Ventas"
        description="Registro de informacion de ventas realizadas"
      />

      <section className="section dashboard">
        <div className="row">
          <div className="col-xxl-3 col-md-6">
            <CardSales />
          </div>
          <div className="col-xxl-3 col-md-6">
            <CardSales />
          </div>
          <div className="col-xxl-3 col-md-6">
            <CardSales />
          </div>
          <div className="col-xxl-3 col-md-6">
            <CardSales />
          </div>
          <div className="col-9">
            <Repostes/>
          </div>
          <div className="col-xxl-3 col-md-6">
            <CardSales />
            <CardSales />
          </div>
          
          <div className="col-9">
            <VentasRecientes/>
          </div>
        </div>
      </section>
    </DivDash>
  )
}

export default Ventas
