import React from 'react'
import { NavLink } from 'react-router-dom'
import { toastcustoms } from '../helpers/helpers_toast'

const Verificacion = () => {
  const onPressverf= () => {
    toastcustoms('success', 'Usuario verificado, ahora puedes acceder al panel..')
  }
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
              className="img-fluid|thumbnail rounded-top|rounded-end|rounded-bottom|rounded-start|rounded-circle|"
              alt="data"
            />
          </div>
          <div className=" d-flex justify-content-center  h-custom-2 mt-4 ">
            <form>
              <p className="text-center text-muted">
                Para acceder ingresa el código de verificación, <br/>enviado al
                correo registrado como correo de contacto
              </p>
              <div className="form-floating has-feedback ">
                <input
                  type="text"
                  className="form-control form-control-lg"
                  name="user"
                  placeholder="Ingresa tu código"
                  required
                />
                <label>Código de Verificación:</label>
              </div>
              <button className=" btn btn-block login-btn mt-4" type="button" onClick={onPressverf}>
                Verificar
              </button>
              <NavLink to={'/login'}>
                <button className=" btn btn-block btn-home  mt-2">
                  <i className="fa fa-arrow-left pe-2" aria-hidden="true"></i>
                  Regresar
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

export default Verificacion
