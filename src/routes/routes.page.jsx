import React from 'react'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import LoginPage from '../pages/page.login'
import BalanceDiario from '../pages/page_balances'
import BalanceBuscar from '../pages/page_balances_buscar'
import Dashboard from '../pages/page_dashboard'
import FacturasPendientes from '../pages/page_facturas'
import FacturasBuscar from '../pages/page_facturas_buscar'
import GestionUsuarios from '../pages/page_gestion_usuarios'
import GestionInventario from '../pages/page_inventario'
import Ventas from '../pages/page_ventas'
import Verificacion from '../pages/page_verification'
import { PrivateRoute, RefirectLogin } from '../utils/utils_ProtectecRoute'

const PageRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Navigate to="/login" />} />
        <Route
          path="/login"
          element={<RefirectLogin component={<LoginPage />} />}
        />
        <Route
          path="/verificacion"
          element={<PrivateRoute component={<Verificacion />} />}
        />
        <Route
          path="/dashboard"
          element={
            <PrivateRoute component={<Navigate to="/dashboard/ventas" />} />
          }
        />
        <Route
          path="/dashboard/*"
          element={<PrivateRoute component={<Dashboard />} />}
        >
          <Route
            path="ventas"
            element={<PrivateRoute component={<Ventas />} />}
          />
          <Route
            path="facturas/pendientes"
            element={<PrivateRoute component={<FacturasPendientes />} />}
          />
          <Route
            path="facturas/buscar"
            element={<PrivateRoute component={<FacturasBuscar />} />}
          />
          <Route
            path="balances"
            element={<PrivateRoute component={<BalanceDiario />} />}
          />
          <Route
            path="balances/buscar"
            element={<PrivateRoute component={<BalanceBuscar />} />}
          />
          <Route
            path="inventario/gestionar"
            element={<PrivateRoute component={<GestionInventario />} />}
          />
          <Route
            path="configuracion/usuarios/crear"
            element={<PrivateRoute component={<GestionUsuarios />} />}
          />
          <Route
            path="configuracion/usuarios/acciones"
            element={<GestionUsuarios />}
          />
          <Route path="block" element={<div>Pagina No encontrada 404 </div>} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default PageRoutes
