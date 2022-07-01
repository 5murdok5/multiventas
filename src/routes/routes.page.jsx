import { Toaster } from 'react-hot-toast'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import LoginPage from '../pages/page.login'
import PageBlock from '../pages/page_block_admin'
import Dashboard from '../pages/page_dashboard'
import RegistroUsuarios from '../pages/page_register_users'
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
          element={<Verificacion />}
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
            element={<PrivateRoute component={<RegistroUsuarios />} />}
          />

          <Route path="block" element={<PageBlock/>} />
        </Route>
      </Routes>
      <Toaster />
    </BrowserRouter>
  )
}

export default PageRoutes
