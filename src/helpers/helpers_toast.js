import toast from 'react-hot-toast'

export const toastcustoms = (
  tipe = 'load',
  sms,
  //  'bottom-right', "bottom-center"
  position = 'bottom-center',
  duration = 3000,
) => {
  switch (tipe) {
    case 'load':
      return toast.loading(sms, {
        duration: duration,
        position: position,
        className: 'load-toast',
        style: {
          background: '#5F72A8',
          color: '#FFFFFF',
        },
      })
    case 'error':
      return toast.error(sms, {
        duration: duration,
        position: position,
        style: {
          background: '#FFB3B3',
          color: '#2B2B2B',
        },
      })
    case 'success':
      return toast.success(sms, {
        duration: duration,
        position: position,
        style: {
          background: '#DDFFCD',
          color: '#30384e',
        },
      })
    case 'info':
      return toast(sms, {
        duration: duration,
        position: position,
        style: {
          background: '#505C7E',
          color: '#FFFFFF',
        },
      })
    default:
      break
  }
}

export const dismiseAllToast = () => toast.dismiss()
