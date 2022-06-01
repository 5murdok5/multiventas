import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useAuth } from '../context/Authcontext'

function AuthHook() {
  const [lgLogin, setLgLogin] = useState({
    showpass: false,
    user: '',
    pass: '',
    usererror: false,
    passerror: false,
    load: false,
  })
  const { singIn } = useAuth()
  const navigate = useNavigate()
  const { showpass, user, pass } = lgLogin

  //   ------- Methods --------
  const chageshowPass = () => setLgLogin({ ...lgLogin, showpass: !showpass })

  const onChangeInputs = ({ target: { name, value } }) =>
    setLgLogin({ ...lgLogin, [name]: value })
  const changeLoadLg = (value) => {
    setLgLogin({
      ...lgLogin,
      load: value,
    })
  }
  const submitLg = async ({ target }) => {
    try {
      setLgLogin({
        ...lgLogin,
        load: true,
      })
      //   toastcustoms('load', 'Iniciando Sesión Espere ...', 'top-left')
      //   await singIn(
      //     `${user.toLowerCase().trim()}@rapifas.com`,
      //     pass,
      //     changeLoadLg,
      //   )
      //   dismiseAllToast()
      //   toastcustoms(
      //     'success',
      //     `Bienvenido al panel Administrativo de Rapifas `,
      //     'top-left',
      //   )
    } catch (error) {
      setLgLogin({
        ...lgLogin,
        load: false,
      })
      //   dismiseAllToast()
      //   toastcustoms('error', `Error inicio ${error}`, 'top-left')
    }
  }
  // ----- imports
  return [lgLogin, submitLg, onChangeInputs, chageshowPass]
}

export default AuthHook
