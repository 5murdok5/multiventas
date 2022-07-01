import { createContext, useContext, useEffect, useState } from 'react'
import { userTest } from '../helpers/helpers_const'

export const authContext = createContext()

export const useAuth = () => {
  const ctx = useContext(authContext)
  if (!ctx) throw new Error('There is no context auth provider')
  return ctx
}
export function AuthProvider({ childdren }) {
  const [userData, setuserData] = useState(undefined)
  const [loading, setLoading] = useState(true)
  // const dispatch = useDispatch()
  const getuserdata = async (id) => {
    // ! descomentar para subir
    // const updateuser = async (user) => {
    //   setuserData(user)
    // }
    // await dispatch(InitAuth(id, updateuser, undefined, logout))
  }

  useEffect(() => {
    const user = getUserdata()
    return () => user
  }, [])
  const getUserdata = async () => {
    // setuserData(userTest) //comentar para ver login aqui setea el usuario obtenido para pasar a login
    setTimeout(() => {
      setLoading(false)
    }, 1500)

    console.log('-------set user data -----')
    //   const data = JSON.parse(localStorage.getItem('dataProfile'))
    //   if (data !== null && data?.id !== undefined) {
    //     await getuserdata(data?.id)
    //   }
    //   setLoading(false)
  }

  const logout = () => {
    // dispatch(AddPrinTAsignacion({}))
    // dispatch(clearListGuias({}))
    // dispatch(AddPrinTManifiesto({}))
    // setLoading(false)
    // setuserData(undefined)
    // localStorage.removeItem('dataProfile')
    // localStorage.removeItem('vr_web')
  }

  const singUser = async (email, pass) => {}
  const createUserEmail = async (email, pass) =>
    await createUserWithEmailAndPassword(auth, email, pass)

  const values = {
    createUserEmail,
    logout,
    singUser,
    userData,
    loading,
  }
  return <authContext.Provider value={values}>{childdren}</authContext.Provider>
}
