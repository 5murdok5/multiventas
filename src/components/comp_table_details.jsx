import React from 'react'

const CompTableDetails = ({ title = 'title here' }) => {
  const testItems = () => {
    let list = []
    for (let index = 0; index < 8; index++) {
      list.push(
        <tr>
          <th>{index + 1}</th>
          <td>Brandon Jacob</td>
          <td>10/04/2022 14h35</td>
          <td>10/04/2022 14h35</td>
          <td>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="" />
              {/* <label class="form-check-label status-value-active" for=""> */}
              <label class="form-check-label status-value-desactivate" for="">
                Desactivado
              </label>
            </div>
          </td>
          <td>
            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
          </td>
        </tr>,
      )
    }
    return list
  }
  return (
    <div className="">
      <h5 className="">{title}</h5>
      <div className="h-table">
        <table className="table table-borderless datatable  ">
          <thead className="title-table">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Nombre Usuario</th>
              <th scope="col">Fecha Creación</th>
              <th scope="col">Fecha de Corte</th>
              <th scope="col">Estado</th>
              <th scope="col">Opciones</th>
            </tr>
          </thead>
          <tbody className="item-table">
            {testItems().map((vl) => {
              return vl
            })}
          </tbody>
        </table>
      </div>
    </div>
  )
}

export default CompTableDetails
