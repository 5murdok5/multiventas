import React from 'react'
import { NavLink } from 'react-router-dom'
import CompFormForgotPass from '../components/comp_form_forgotpassword'
import CompFormregister from '../components/comp_form_forgotpassword'
import CompFormLogin from '../components/comp_form_lg'
import AuthHook from '../hooks/hook_login'

const LoginPage = () => {
  const [lgLogin, submitLg, onChangeInputs, chageshowPass, changetoForgotandBack] = AuthHook()
  const { showForgot } = lgLogin
  return (
    <div>
      <div className="top-overlay ">
        <svg
          className="svg-top"
          viewBox="0 0 1559 819"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M1559 132.988L3.48091e-05 316L6.24347e-05 -2.73348e-05L1559 0.000108957L1559 132.988Z"
            fill="#353846"
          />
          <path d="M0 659.077L1559 439V819L0 819L0 659.077Z" fill="#F78952" />
        </svg>
      </div>
      <div className="position-relative page-lg cont-lg">
        <div className="container-lg" id="container">
          {showForgot ? (
            <CompFormForgotPass 
              backtoLogin={changetoForgotandBack}
            />
          ) : (
            <CompFormLogin
              lgLogin={lgLogin}
              submitLg={submitLg}
              onChangeInputs={onChangeInputs}
              chageshowPass={chageshowPass}
              gotoForgot={()=> changetoForgotandBack(true)}
            />
          )}
        </div>
      </div>
    </div>
  )
}

export default LoginPage
