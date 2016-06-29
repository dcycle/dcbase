<?php

class whatever {
  function example($a, $b, $c) {
    if ($a) {
      if ($b) {
        if ($c) {
          return 'ABC';
        }
        else {
          return 'AB';
        }
      }
      else {
        if ($c) {
          return 'AC';
        }
        else {
          return 'A';
        }
      }
    }
    else {
      if ($b) {
        if ($c) {
          return 'BC';
        }
        else {
          return 'B';
        }
      }
      else {
        if ($c) {
          return 'C';
        }
        else {
          return '';
        }
      }
    }
  }
}
