import React from 'react'

const CardSales = () => {
  return (
    <div className="card info-card sales-card">
    <div className="card-body">
      <h5 className="card-title">
        Ventas <span>| Hoy</span>
      </h5>

      <div className="d-flex align-items-center">
        <div className="card-icon rounded-circle d-flex align-items-center justify-content-center">
          {/* <i className="bi bi-cart"></i> */}
          <i className="fa fa-home" aria-hidden="true"></i>
        </div>
        <div className="ps-3">
          <h6>145</h6>
          <span className="text-success small pt-1 fw-bold">
            12%
          </span>{' '}
          <span className="text-muted small pt-2 ps-1">incremento</span>
        </div>
      </div>
    </div>
  </div>
  )
}

export default CardSales