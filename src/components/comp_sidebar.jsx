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
              isHidenMenu={hidenallmenu(['ventas_crear'])}
              sectionOpen="ventas"
              NameMenu="Ventas"
              idRef="vent"
              faIcon="fa-credit-card"
              listLinks={[
                {
                  hiden: hidenLinks('ventas_crear'),
                  isActive: hidenLinks('ventas_crear'),
                  path: '/dashboard/ventas',
                  name: 'Registro de Ventas',
                },
              ]}
            />
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu(['factura_crear', 'factura_buscar'])}
              sectionOpen="fac"
              NameMenu="Facturas"
              idRef="fac"
              faIcon="fa-user-circle"
              listLinks={[
                {
                  hiden: hidenLinks('factura_buscar'),
                  isActive: true,
                  path: '/dashboard/facturas/buscar',
                  name: 'Buscar Faturas',
                },
                {
                  hiden: hidenLinks('factura_crear'),
                  isActive: true,
                  path: '/dashboard/facturas/pendientes',
                  name: 'Facturas Pendientes',
                },
              ]}
            />
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu(['balances_crear', 'balances_buscar'])}
              sectionOpen="cierreCaja"
              NameMenu="Caja"
              idRef="caja"
              faIcon="fa-cash-register"
              listLinks={[
                {
                  hiden: hidenLinks('balances_crear'),
                  isActive: true,
                  path: '/dashboard/balances',
                  name: 'Balance Diario',
                },
                {
                  hiden: hidenLinks('balances_buscar'),
                  isActive: true,
                  path: '/dashboard/balances/buscar',
                  name: 'Buscar Balances',
                },
              ]}
            />
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu(['inventario_crear'])}
              sectionOpen="invet"
              NameMenu="Inventario"
              idRef="invt"
              faIcon="fa-box"
              listLinks={[
                {
                  hiden: hidenLinks('inventario_crear'),
                  isActive: true,
                  path: '/dashboard/inventario/gestionar',
                  name: 'Gestionar Productos',
                },
              ]}
            />
            <MenuAcContainer
              onCloseId="sideBarMenu"
              isHidenMenu={hidenallmenu([
                'usuarios_crear',
                'usuarios_acciones',
              ])}
              sectionOpen="user"
              NameMenu="Gestion de Usuarios"
              idRef="user"
              faIcon="fa-user-circle"
              listLinks={[
                {
                  hiden: hidenLinks('usuarios_crear'),
                  isActive: true,
                  path: '/dashboard/configuracion/usuarios/crear',
                  name: 'Crear Usuarios',
                },
                {
                  hiden: hidenLinks('usuarios_acciones'),
                  isActive: true,
                  path: '/dashboard/configuracion/usuarios/acciones',
                  name: 'Asignar Acciones',
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
