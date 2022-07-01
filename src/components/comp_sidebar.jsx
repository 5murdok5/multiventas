import React from 'react'
import '../App.css'
import { roluser } from '../helpers/helpers_user_actions'
import SidebarHook from '../hooks/Hook_Sidebar_routes'
import MenuAcContainer from './comp_menu_cont_sidebar'
const SideBar = () => {
  const [hidenLinks, hidenallmenu, nameRol] = SidebarHook()

  return (
    <nav className="pc-sidebar">
      <div className="navbar-wrapper">
        <div className="navbar-content overflow-auto" id="sideBarMenu">
          <div className="m-header ">
            <div className="d-flex flex-row">
              {/* <i class="fa fa-search p-1 me-2" aria-hidden="true"></i> */}
              <div>
                Panel
                <br />
                Administrativo
              </div>
            </div>
          </div>
          <ul className="pc-navbar accordion">
            <li className="pc-item pc-caption">
              <label>{nameRol}</label>
            </li>
            {/* <li className="pc-item"> */}
            {/* <NavLink to={'/'} className="pc-link "> */}
            {/* <div className="pc-link ">
                <span className="pc-micon">
                  <i className="fa fa-home" aria-hidden="true"></i>
                </span>
                <span className="pc-mtext">Página Principal</span>
              </div> */}
            {/* </NavLink> */}
            {/* </li> */}
            <li className="pc-item pc-caption pt-4">
              <label>Servicios</label>
              <span>Selecciona una opción</span>
            </li>
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu(['ventas_crear'])}
              sectionOpen="ventas"
              NameMenu="Registro"
              idRef="vent"
              faIcon="fa-user-circle"
              listLinks={[
                {
                  hiden: hidenLinks('ventas_crear'),
                  isActive: hidenLinks('ventas_crear'),
                  path: '/dashboard/ventas',
                  name: 'Registrar Usuarios',
                },
              ]}
            />
            <li className="btn-menu-slide">
              <a className="pc-link ">
                <span className="pc-micon file">
                  <i className="fa fa-times" aria-hidden="true"></i>
                </span>
                <span className="pc-mtext">
                  <span className="">Cerrar Sesion</span>
                </span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  )
}

export default SideBar
