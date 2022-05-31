import React from 'react'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import LoginPage from '../pages/page.login'
import BalanceDiario from '../pages/page_balances'
import BalanceBuscar from '../pages/page_balances_buscar'
import Dashboard from '../pages/page_dashboard'
import FacturasPendientes from '../pages/page_facturas'
import FacturasBuscar from '../pages/page_facturas_buscar'
import GestionUsuarios from '../pages/page_gestion_usuarios'
import CrearUsuarios from '../pages/page_gestion_usuarios'
import GestionInventario from '../pages/page_inventario'
import Ventas from '../pages/page_ventas'
import Verificacion from '../pages/page_verification'

const PageRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
      <Route
          path="/"
          element={<Navigate to="/login" />
          }
        />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/verificacion" element={<Verificacion />} />
        <Route
          path="/dashboard"
          element={<Navigate to="/dashboard/ventas" />
          }
        />
        <Route path="/dashboard/*" element={<Dashboard />}>
          <Route path="ventas" element={<Ventas/>} />
          <Route path="facturas" element={<FacturasPendientes/>} />
          <Route path="facturas/buscar" element={<FacturasBuscar/>} />
          <Route path="balances" element={<BalanceDiario/>} />
          <Route path="balances/buscar" element={<BalanceBuscar/>} />
          <Route path="inventario/gestionar" element={<GestionInventario/>} />
          <Route path="configuracion/usuarios/crear" element={<GestionUsuarios/>} />
          <Route path="configuracion/usuarios/acciones" element={<GestionUsuarios/>} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default PageRoutes
