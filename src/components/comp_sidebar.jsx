import React from 'react'
import '../App.css'
import SidebarHook from '../hooks/Hook_Sidebar_routes'
import MenuAcContainer from './comp_menu_cont_sidebar'
const SideBar = () => {
    const [hidenLinks, hidenallmenu, nameRol] = SidebarHook()
  return (
    <nav className="pc-sidebar">
      <div className="navbar-wrapper">
        <div className="m-header ">Sysvent</div>

        <div className="navbar-content overflow-auto" id="sideBarMenu">
          <ul className="pc-navbar accordion">
            <li className="pc-item pc-caption">
              <label>Administrador</label>
            </li>
            <li className="pc-item">
              {/* <NavLink to={'/'} className="pc-link "> */}
              <div className="pc-link ">
                <span className="pc-micon">
                  <i className="fa fa-home" aria-hidden="true"></i>
                </span>
                <span className="pc-mtext">Página Principal</span>
              </div>
              {/* </NavLink> */}
            </li>
            <li className="pc-item pc-caption">
              <label>Servicios</label>
              <span>Selecciona una opción</span>
            </li>
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu([
                'guia_envios',
                'guia_retiros',
                'guia_retororno',
                'guia_notificaciones',
                'guia_carga',
              ])}
              sectionOpen="crearGuia"
              NameMenu="Crear Guías"
              idRef="guia"
              listLinks={[
                {
                  hiden: hidenLinks('guia_envios'),
                  isActive: hidenLinks('guia_envios'),
                  path: '/dashboard/crearGuia/envios',
                  name: 'Envios',
                },
                
              ]}
              />
          </ul>
        </div>
      </div>
    </nav>
  )
}

export default SideBar
