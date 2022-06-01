import React from 'react'
import DivDash from '../components/comp_cont_dashboard'
import Titles from '../components/comp_dash_titles'

const GestionUsuarios = () => {
  return (
    <DivDash>
      <Titles
        title="Ventas"
        description="Registro de informacion de ventas realizadas"
      />
      <div className="pagetitle"></div>
      <section className="section">
        <form>
          <div className="card info-card sales-card">
            <div className="card-body">
              <div className="col-6 col-md-3">
                <div className="guia-form position-relative">
                  <label className="form-label">Email de Contacto:</label>
                  <input
                    type="text"
                    className="form-guia form-control"
                    placeholder="name@example.com"
                    // disabled={disableInputs}
                    name="email_contacto"
                    autoComplete="off"
                    // value={email_contacto}
                    // onChange={handlerData}
                  />
                </div>
              </div>
            </div>
          </div>
        </form>
      </section>
    </DivDash>
  )
}

export default GestionUsuarios
