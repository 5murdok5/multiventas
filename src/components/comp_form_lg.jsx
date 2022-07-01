import React from 'react'

const CompFormLogin = ({lgLogin, submitLg, onChangeInputs, chageshowPass, gotoForgot}) => {
    const { showpass, user, pass, usererror, passerror, load } = lgLogin
    return (
    <div className="form-container-lg sign-in-container">
      <div className=" d-flex justify-content-center   mt-5 ">
        <form onSubmit={submitLg}>
          <h1 className="title-panel-lg">Panel Administrativo</h1>
          <p className="text-center text-desc-lg">
            Ingresa tus Credenciales para Acceder
          </p>
          <div className="form-floating has-feedback ">
            <input
              type="text"
              className="form-control form-control-lg"
              name="user"
              value={user}
              onChange={onChangeInputs}
              placeholder="name@example.com"
              required
            />
            <label>Usuario:</label>
          </div>
          {usererror == false ? (
            <></>
          ) : (
            <div className="error-input animate__animated animate__fadeIn">
              Debes ingresar ingresa tu usuario.
            </div>
          )}
          <div className="form-floating  mt-3">
            <input
              type={showpass ? 'text' : 'password'}
              className="form-control form-control-lg"
              name="pass"
              value={pass}
              onChange={onChangeInputs}
              autoComplete="off"
              placeholder="name@example.com"
              required
            />
            <label>Contraseña:</label>
            <i
              onClickCapture={chageshowPass}
              toggle="#password-field"
              className={`fa fa-fw ${
                showpass ? 'fa-eye-slash' : 'fa-eye'
              } field-icon toggle-password`}
            />
          </div>
          {passerror == false ? (
            <></>
          ) : (
            <div className="error-input animate__animated animate__fadeIn">
              Debes ingresar una contraseña.
            </div>
          )}
          <button
            className=" btn-1 w-100 mt-lg py-3"
            type="submit"
            disabled={load}
          >
            {load && (
              <div
                className="spinner-border spinner-border-sm text-light me-2 "
                role="status"
              >
                <span className="sr-only">Loading...</span>
              </div>
            )}
            Ingresar
          </button>
          <p className="text-center text-forgot-pass" onClick={gotoForgot}>Recuperar Contraseña</p>
        </form>
      </div>
    </div>
  )
}

export default CompFormLogin
