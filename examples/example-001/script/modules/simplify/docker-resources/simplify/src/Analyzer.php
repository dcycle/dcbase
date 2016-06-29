<?php

abstract class Analyzer {
  function __construct($location) {
    $this->location = $location . '/' . $this->getFileLocation();
  }

  function getFileContents() {
    $contents = file_get_contents($location);
    return $contents;
  }

}
