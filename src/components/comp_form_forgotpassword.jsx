import React from 'react'

const CompFormForgotPass = ({ backtoLogin }) => {
  return (
    <div className="form-container-lg sign-in-container">
      <div className=" d-flex justify-content-center   mt-5 ">
        <form
        //   onSubmit={submitLg}
        >
          <h1 className="title-panel-lg">Recuperar Contraseña</h1>
          <p className="text-center text-desc-lg">
            Ingresa un email de contacto,
            <br />
            para envia un enlace de acceso.
          </p>

          <div className="form-floating  mt-3">
            <input
              type={'email'}
              className="form-control form-control-lg"
              name="pass"
              autoComplete="off"
              placeholder="name@example.com"
              required
            />
            <label>Email de Recuperación:</label>
          </div>

          <button className=" btn-1 w-100 mt-lg py-3" type="submit">
            {/* {load && (
            <div
              className="spinner-border spinner-border-sm text-light me-2 "
              role="status"
            >
              <span className="sr-only">Loading...</span>
            </div>
          )} */}
            Recuperar
          </button>
          <p
            className="text-center text-forgot-pass"
            onClick={() => backtoLogin && backtoLogin()}
          >
            Regresar al Login
          </p>
        </form>
      </div>
    </div>
  )
}

export default CompFormForgotPass
