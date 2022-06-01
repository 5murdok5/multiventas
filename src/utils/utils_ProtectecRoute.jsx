import { Navigate, useLocation } from 'react-router-dom'
import { useAuth } from '../context/Authcontext'
import { blockFuctions } from '../helpers/helpers_route'

export const PrivateRoute = ({ component: Component }) => {
  const { userData, loading } = useAuth()
  const location = useLocation()
  let action = blockFuctions(location.pathname)
  let isLook = userData?.fuctions[`${action}`]
  if (loading) {
    return <div className="text-center"> Loadding ...</div>
  } else if (userData === undefined) {
    return <Navigate to="/login" />
  } else if (userData !== undefined && isLook === false) {
    return <Navigate to="/dashboard/block" />
  } else {
    return Component
  }
}
export const RefirectLogin = ({ component: Component }) => {
  const { userData, loading } = useAuth()
  const location = useLocation()
  if (loading) return <div>loadding ....</div>
  if (userData && location.pathname === '/login')
    return <Navigate to="/dashboard/ventas" />
  return Component
}
