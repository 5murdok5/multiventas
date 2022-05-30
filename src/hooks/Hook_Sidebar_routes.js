// import { useLocation } from 'react-router-dom'
// import { useAuth } from '../utils/context/Authcontext'
// import { nameRolUser } from '../utils/helpers/Helpers'

function SidebarHook() {
  //  ----  Variables ----
  // const currentpage = useLocation().pathname
  // const { userData } = useAuth()
  // const { rol } = userData
  // let nameRol = nameRolUser(userData.rol)
  //  ----- Methods ------
  const hidenLinks = (link) => {
    // return userData.fuctions[`${link}`]
    return false
  }
  const hidenallmenu = (list) => {
    return false
    // let templis = []
    // list.map((value) => {
    //   if (userData.fuctions[`${value}`] !== undefined) {
    //     templis = [...templis, userData.fuctions[`${value}`]]
    //   }
    // })
    // return templis.every((e) => e === false)
  }
  //   ---- imports -----
  return [
    hidenLinks,
    hidenallmenu,
    // , nameRol, currentpage, rol
  ]
}

export default SidebarHook
