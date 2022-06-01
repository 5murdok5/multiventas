import { useLocation } from 'react-router-dom'
import { useAuth } from '../context/Authcontext'
import { roluser } from '../helpers/helpers_user_actions'
// import { useAuth } from '../utils/context/Authcontext'
// import { nameRolUser } from '../utils/helpers/Helpers'

function SidebarHook() {
  //  ----  Variables ----
  const currentpage = useLocation().pathname
  const { userData } = useAuth()
  const { rol } = userData
  let nameRol = roluser(rol)
  //  ----- Methods ------
  const hidenLinks = (link) => {
    return userData.fuctions[`${link}`]
    // return false
  }
  const hidenallmenu = (list) => {
    let templis = []
    list.map((value) => {
      if (userData.fuctions[`${value}`] !== undefined) {
        templis = [...templis, userData.fuctions[`${value}`]]
      }
    })
    return templis.every((e) => e === false)
  }
  //   ---- imports -----
  return [
    hidenLinks,
    hidenallmenu,
    nameRol,
    // , nameRol, currentpage, rol
  ]
}

export default SidebarHook
