import './App.css'
import { AuthProvider } from './context/Authcontext'
import PageRoutes from './routes/routes.page'

function App() {

  return (
    <div className="App">
      <AuthProvider childdren={<PageRoutes />} />
    </div>
  )
}

export default App
