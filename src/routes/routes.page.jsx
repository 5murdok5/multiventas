import React from 'react'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import LoginPage from '../pages/page.login'
import CierreCaja from '../pages/page_cierreCaja'
import Dashboard from '../pages/page_dashboard'
import Facturas from '../pages/page_facturas'
import GestionUsuarios from '../pages/page_gestion_usuarios'
import CrearUsuarios from '../pages/page_gestion_usuarios'
import Inventario from '../pages/page_inventario'
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
          <Route path="facturero" element={<Facturas/>} />
          <Route path="cierreCaja" element={<CierreCaja/>} />
          <Route path="Inventario/:type" element={<Inventario/>} />
          <Route path="configuracion/usuarios/:type" element={<GestionUsuarios/>} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default PageRoutes
