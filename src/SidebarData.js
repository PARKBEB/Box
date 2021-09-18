import React from 'react';
import * as BsIcons from 'react-icons/bs';

export const SidebarData = [
  {
    title: '강의관리',
    path: '/Login',
    icon: <BsIcons.BsFillInfoCircleFill />,
    cName: 'nav-text'
  },
  {
    title: '시험관리',
    path: '/Tboard',
    icon: <BsIcons.BsFillHouseDoorFill />,
    cName: 'nav-text'
  },
  {
    title: '과제관리',
    path: '/SpringBoot',
    icon: <BsIcons.BsEnvelopeFill />,
    cName: 'nav-text'
  },
  {
    title: '평가관리',
    path: '/About',
    icon: <BsIcons.BsPersonBoundingBox />,
    cName: 'nav-text'
  }
];