import React, { useState } from 'react'

const ActionComponent = ({ title = 'Title Here', list = [], setStateExVl }) => {
  let values = {
    listFuctions: list.map((e) => {
      let fuction = {
        title: e.name,
        name: e.name_vl,
        value: e.value,
      }
      return fuction
    }),
    checkAll: false,
  }

  const [value, setValues] = useState(values)
  const { listFuctions, checkAll } = value

  const checkAllValues = () => {
    let tempVl = listFuctions.map((e) => {
      return {
        ...e,
        value: !checkAll,
      }
    })
    let setVl = {
      ...values,
      listFuctions: tempVl,
      checkAll: !checkAll,
    }

    setStateExVl && setStateExVl(setVl.listFuctions, generateName())
    setValues(setVl)
  }
  const onChangeValues = (nameValue) => {
    let tmvl = {
      ...values,
      listFuctions: listFuctions.map((e) => {
        if (e.name === nameValue) {
          e.value = !e.value
        }
        return e
      }),
      checkAll: listFuctions.every((e) => e.value === true),
    }
    setValues(tmvl)
    setStateExVl && setStateExVl(tmvl.listFuctions, generateName())
  }
  const generateName = () => {
    let tvl = title.toLowerCase().split(' ')
    let vl_name = tvl.join('_')
    return vl_name
  }
  return (
    <div className="col-3">
      <div className="d-flex flex-row bd-highlight align-items-center justify-content-between pb-2">
        <span className="title-section-nm-2">{title}</span>

        <div className='all-check'>
          <input
            className="form-check-input"
            type="checkbox"
            checked={checkAll}
            onClick={checkAllValues}
          />
          <label className="form-check-label text-nowrap lavel-action">
            Todas
          </label>
        </div>
      </div>
      <div className="container-actions p-2 my-2">
        {listFuctions.map((vl, index) => {
          return (
            <div className="form-check" key={`${index}_action`}>
              <input
                className="form-check-input"
                type="checkbox"
                checked={vl.value}
                name={`${vl.name}`}
                onClick={() => onChangeValues(vl.name)}
                defaultChecked={vl.value}
              />
              <label className="form-check-label text-nowrap lavel-action">
                {vl.title}
              </label>
            </div>
          )
        })}
      </div>
    </div>
  )
}

export default ActionComponent
