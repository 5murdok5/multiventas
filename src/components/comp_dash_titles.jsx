import { NavLink, useLocation, useNavigate } from "react-router-dom"
import { useAuth } from "../context/Authcontext"
import { roluser } from "../helpers/helpers_user_actions"


const Titles = ({
  icon = 'fa-file',
  title = 'Title temp',
  description = 'Id Lorem culpa nulla quis officia reprehenderit',
}) => {
  const { logout, userData } = useAuth()
  const navigate = useNavigate()
  const salir = async () => {
    const exitapp = async () => {
    //   try {
    //     toastcustoms('load', `Cerrando Sesion`, 'top-left')
    //     await logout()
    //     dismiseAllToast()
    //     navigate('/login')
    //   } catch (error) {
    //     dismiseAllToast()
    //     toastcustoms('error', `Error al Salir ${error}`, 'top-left')
    //   }
    }
    // showAlertAacept('Estas seguro de salir?', '', async () => await exitapp())
  }
  const onTapCoppy = (vl) => {
    navigator.clipboard.writeText(vl)
    // toastcustoms('success', `Copiado al portapapeles: ${vl}`)
  }
  const location = useLocation()
  const isActiveSolicitar = () => {
    if (location.pathname?.includes('/dashboard/solicitarRetiro')) {
      return true
    } else {
      return false
    }
  }
  return (
    <div className="d-flex flex-row justify-content-between align-items-center mb-4">
      <div className="d-flex flex-row bd-highlight align-items-center">
        <div className="bd-highlight icon-container ">
          <i className={`fas ${icon}`}></i>
        </div>
        <div className="d-flex flex-column bd-highlight align-items-start">
          <span className="title-section text-capitalize">{title}</span>
          <span className="description">{description}</span>
        </div>
      </div>
      <div className="d-flex flex-row align-items-center">
        <div className="px-3 text-nowrap">
          {(userData.rol === 'Corporativo' || userData.rol === 'admin') && (
            <NavLink to="/dashboard/solicitarRetiro">
              <div
                className={`exitApp text-nowrap${
                  isActiveSolicitar() === true ? 'exitApp-active' : 'exitApp'
                }`}
              >
                <i
                  className="fas fa-inbox px-2 icon-str"
                  aria-hidden="true"
                ></i>
                <span className="exitApp-txt">Solicitar Retiro</span>
              </div>
            </NavLink>
          )}
        </div>
        <div className="dropdown">
          <button
            className="btn-user text-nowrap"
            onDoubleClick={() => onTapCoppy(userData.id)}
            type="button"
            id="MenuNav"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
            <span id="user">{roluser(userData.rol)}</span>
            <i className="fa fa-user-circle ps-2" aria-hidden="true"></i>
          </button>
          <ul className="dropdown-menu menu-custom" aria-labelledby="MenuNav">
            <li>
              <NavLink to="/dashboard/configuracion/datosusuario">
                <a className="dropdown-item " href="#">
                  <i className="fa fa-cogs pe-2" aria-hidden="true"></i>
                  Datos de Usuario
                </a>
              </NavLink>
            </li>
            <li onClick={salir}>
              <a className="dropdown-item " href="#">
                <i className="fas fa-door-open pe-2" aria-hidden="true"></i>
                Cerrar Sesión
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  )
}

export default Titles
