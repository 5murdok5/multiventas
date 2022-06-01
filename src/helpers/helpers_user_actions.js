export function roluser(vl) {
  switch (vl) {
    case 'admin':
      return 'Administrador'
    case 'cajero':
      return 'Cajero'
    case 'encargado':
      return 'Encargado'
    default:
      return 'Administrador'
  }
}
