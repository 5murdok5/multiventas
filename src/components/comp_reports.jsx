import React from 'react'

const Repostes = () => {
  return (
      <div className="card">
        <div className="filter">
          <a className="icon" href="#" data-bs-toggle="dropdown">
            <i className="bi bi-three-dots"></i>
          </a>
          <ul className="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
            <li className="dropdown-header text-start">
              <h6>Filter</h6>
            </li>

            <li>
              <a className="dropdown-item" href="#">
                Today
              </a>
            </li>
            <li>
              <a className="dropdown-item" href="#">
                This Month
              </a>
            </li>
            <li>
              <a className="dropdown-item" href="#">
                This Year
              </a>
            </li>
          </ul>
        </div>

        <div className="card-body">
          <h5 className="card-title">
            Reports <span>/Today</span>
          </h5>

          <div id="reportsChart" className='text-center '>
            <img
              src="https://i.imgur.com/5WY3bTr.png"
              className="img-fluid|thumbnail rounded-top|rounded-end|rounded-bottom|rounded-start|rounded-circle|"
              alt="chard"
            />
          </div>
        </div>
      </div>
  )
}

export default Repostes
