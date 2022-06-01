import React from 'react'
import { NavLink } from 'react-router-dom'
import AuthHook from '../hooks/hook_login'

const LoginPage = () => {
  const [lgLogin, submitLg, onChangeInputs, chageshowPass] = AuthHook()
  const { showpass, user, pass, usererror, passerror, load } = lgLogin
  return (
    <div className="position-relative page-lg">
      <div className="row align-items-center pg-log ">
        <div className="col-xl-12 align-self-center text-black  animate__animated animate__fadeIn">
          <div className=" text-center">
            {/* <NavLink to={'/'}>
          <img
            className="text-center"
            width="250"
            height="80"
            src={logo}
          alt="logo"
          />
        </NavLink> */}
            <img
              width="250"
              height="140"
              src="https://1000marcas.net/wp-content/uploads/2022/01/Instamoda-Logo.png"
              class="img-fluid|thumbnail rounded-top|rounded-end|rounded-bottom|rounded-start|rounded-circle|"
              alt="data"
            />
          </div>
          <div className=" d-flex justify-content-center  h-custom-2 mt-4 ">
            <form onSubmit={submitLg}>
              <p className='text-center text-muted'>
                Bienvenido, ingresa tus datos <br/>para acceder a tu panel
                administrativo.
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
                className=" btn btn-block login-btn mt-4"
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
                Iniciar Sesión
              </button>
              <NavLink to={'/'}>
                <button className=" btn btn-block btn-home  mt-2">
                  <i className="fa fa-home mx-2" aria-hidden="true"></i>
                  Página Principal
                </button>
              </NavLink>
            </form>
          </div>
        </div>
        {/* <div className="col-xl-6 align-self-center px-0 d-none d-xl-block section-img animate__animated animate__slideInRight">
      <img src={logoimg} alt="photoImg" className="w-100 vh-100" />
    </div> */}
      </div>
    </div>
  )
}

export default LoginPage
