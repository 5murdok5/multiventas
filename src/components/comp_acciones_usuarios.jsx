import React from 'react'
import ActionComponent from './comp_accion_usuarios'

const AccionesUsuario = ({ onChangeFuctions, initVl }) => {
  return (
    <div>
      <div className="row">
        <ActionComponent
          title="Ventas"
          list={[
            {
              name: 'Registrar Ventas',
              name_vl: 'guia_envios',
              value: true,
            },
          ]}
          //   setStateExVl={onChangeFuctions}
        />
        <ActionComponent
          title="Facturas"
          list={[
            {
              name: 'Buscar Facturas',
              name_vl: 'guia_rastreo',
              value: true,
            },
            {
              name: 'Facturas Pendientes',
              name_vl: 'guia_anular',
              value: true,
            },
          ]}
          //   setStateExVl={onChangeFuctions}
        />

        <ActionComponent
          title="Caja"
          list={[
            {
              name: 'Balance Diario',
              name_vl: 'guia_actualizar_peso',
              value: true,
            },
            {
              name: 'Buscar Balances',
              name_vl: 'guia_actualizar_peso',
              value: true,
            },
          ]}
          //   setStateExVl={onChangeFuctions}
        />
        <ActionComponent
          title="Inventario"
          list={[
            {
              name: 'Gestionar Profuctos',
              name_vl: 'asignacion_asignar',
              value: false,
            },
          ]}
          //   setStateExVl={onChangeFuctions}
        />
      </div>
      <div className="row pt-3">
        <ActionComponent
          title="Gestion de Usuario"
          list={[
            {
              name: 'Crear Usuarios',
              name_vl: 'guia_reporte_guias',
              value: true,
            },
            {
              name: 'Asignar Acciones',
              name_vl: 'reporte_mensual',
              value: true,
            },
          ]}
          setStateExVl={onChangeFuctions}
        />
      </div>
    </div>
  )
}

export default AccionesUsuario
