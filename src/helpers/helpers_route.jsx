export const currentPageOpen = (type) => {
    switch (type) {
      case '/dashboard':
        return 'inicio'
      default:
        return ''
    }
  }

  export const blockFuctions = (type) => {
    switch (type) {
      case '/dashboard/ventas':
        return 'ventas_crear'
      case '/dashboard/facturas':
        return 'factura_crear'
      case '/dashboard/facturas/buscar':
        return 'factura_buscar'
      case '/dashboard/balances':
        return 'balances_crear'
      case '/dashboard/balances/buscar':
        return 'balances_buscar'
      case '/dashboard/inventario/gestionar':
        return 'inventario_crear'
      case '/dashboard/configuracion/usuarios/crear':
        return 'usuarios_crear'
      case '/dashboard/configuracion/usuarios/acciones':
        return 'usuarios_acciones'
      default:
        return ''
    }
  }