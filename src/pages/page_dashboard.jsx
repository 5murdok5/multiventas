import React from 'react'
import { Outlet } from 'react-router-dom'
import SideBar from '../components/comp_sidebar'

const Dashboard = () => {
  return (
    <>
      <div className="body-dash d-print-none">
        <div className="pc-container">
          {/* <NavBarDash /> */}
          <div className="d-flex flex-row">
            <SideBar />
            <Outlet />
          </div>
        </div>
      </div>
    </>
  )
}

export default Dashboard
