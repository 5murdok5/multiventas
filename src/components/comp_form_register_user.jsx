import React from 'react'

const CompFormRegisterUser = () => {
  return (
    <div>
      <h5 className="mb-3">Editar/Registar Información de Usuario</h5>
      <div className="row justify-content-start">
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Email:</label>
            <input
              type="email"
              className="form-guia form-control text-input-upper"
              placeholder="email@exapmple.com"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Nombres:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Apellidos:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Telefono 1:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Telefono 2:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Contraseña:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">Re-Contraseña:</label>
            <input
              type="text"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
        <div className="col-12 col-sm-12  col-md-6 col-lg-6 col-xl-3 mb-2">
          <div className="guia-form position-relative">
            <label className="form-label">fecha de Corte:</label>
            <input
              type="date"
              className="form-guia form-control text-input-upper"
              placeholder="Balance recidual"
              name="razonSocial"
              autoComplete="off"
            />
          </div>
        </div>
      </div>
      <div className="row mt-2">
        <div className="col"></div>
        <div className="col-3">
          <button className="btn-1 w-100 py-2">Guardar Informacion</button>
        </div>
      </div>
    </div>
  )
}

export default CompFormRegisterUser
