import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useAuth } from '../context/Authcontext'
import { toastcustoms } from '../helpers/helpers_toast'

function AuthHook() {
  const initvl = {
    showpass: false,
    user: '',
    pass: '',
    usererror: false,
    passerror: false,
    load: false,
    showForgot: false,
  }
  const [lgLogin, setLgLogin] = useState(initvl)
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
  const submitLg = async (e) => {
    e.preventDefault()
    toastcustoms('success', 'Bienvenido')
    //TODO Modificar desde aunth context
    // try {
    //   setLgLogin({
    //     ...lgLogin,
    //     load: true,
    //   })
    //   toastcustoms('load', 'Iniciando Sesión Espere ...', 'top-left')
    //  setTimeout(() => {
    //   await singIn(
    //     `${user.toLowerCase().trim()}`,
    //     pass,
    //     changeLoadLg,
    //   )
    //   dismiseAllToast()
    //   toastcustoms(
    //     'success',
    //     `Bienvenido al panel Administrativo de Rapifas `,
    //     'top-left',
    //   )
    //  }, 2000);
    // } catch (error) {
    //   setLgLogin({
    //     ...lgLogin,
    //     load: false,
    //   })
    //   dismiseAllToast()
    //   toastcustoms('error', `Error inicio ${error}`, 'top-left')
    // }
  }
  const changetoForgotandBack = (vl) => {
    console.log('entro aqui', vl)
    setLgLogin({
      ...lgLogin,
      showForgot: vl ?? false,
    })
  }
  // ----- imports
  return [
    lgLogin,
    submitLg,
    onChangeInputs,
    chageshowPass,
    changetoForgotandBack,
  ]
}

export default AuthHook
