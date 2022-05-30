import React from 'react'
import { NavLink, useLocation } from 'react-router-dom'
import { currentPageOpen } from '../helpers/helpers_route'
const MenuAcContainer = ({
  isHidenMenu = false,
  sectionOpen,
  idRef,
  NameMenu,
  onCloseId,
  listLinks = [],
  faIcon = 'fa-file',
}) => {
  //   console.log(listLinks)
  const currentpage = useLocation().pathname
  return (
    <>
      {isHidenMenu === false && (
        <ul id={idRef}>
          <li className="btn-menu-slide">
            <a
              className={
                currentPageOpen(currentpage) === sectionOpen
                  ? 'pc-link title-active '
                  : 'pc-link '
              }
              data-bs-toggle="collapse"
              data-bs-target={`#${idRef}_ref`}
              aria-expanded="true"
              aria-controls={`${idRef}_ref`}
            >
              <span className="pc-micon file">
                <i className={`fas ${faIcon}`}></i>
              </span>
              <span className="pc-mtext">{NameMenu}</span>
              <span className="pc-arrow">
                <i className="fas fa-chevron-right"></i>
              </span>
            </a>
          </li>
          <li
            className={`pc-submenu collapse ${
              currentPageOpen(currentpage) === sectionOpen && 'show'
            }`}
            id={`${idRef}_ref`}
            data-bs-parent={`#${onCloseId}`}
            aria-labelledby={idRef}
          >
            {listLinks.map((vlInk, index) => {
              if (vlInk.hiden === true) {
                return (
                  <li className="pc-item" key={`${vlInk.path}_${index}`}>
                    <NavLink
                      className={({ isActive }) =>
                        isActive ? 'pc-link active-selection' : 'pc-link'
                      }
                      to={vlInk?.path}
                    >
                      {vlInk?.name}
                    </NavLink>
                  </li>
                )
              } else {
                return <></>
              }
            })}
          </li>
        </ul>
      )}
    </>
  )
}

export default MenuAcContainer
