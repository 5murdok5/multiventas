export const currentPageOpen = (type) => {
    switch (type) {
      case '/dashboard':
        return 'inicio'
      default:
        return ''
    }
  }