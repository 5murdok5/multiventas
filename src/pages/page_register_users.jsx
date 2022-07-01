import DivDash from '../components/comp_cont_dashboard'
import CompTitles from '../components/comp_dash_titles'
import CompFormRegisterUser from '../components/comp_form_register_user'
import CompTableDetails from '../components/comp_table_details'

const RegistroUsuarios = () => {
  return (
    <DivDash>
      <CompTitles
        title="Registro de Usuarios"
        description="registra informacion de usuarios"
      />

      <section className="section dashboard">
        <div className="card">
          <CompTableDetails />
        </div>
        <div className="card">
          <CompFormRegisterUser />
        </div>
      </section>
    </DivDash>
  )
}

export default RegistroUsuarios
