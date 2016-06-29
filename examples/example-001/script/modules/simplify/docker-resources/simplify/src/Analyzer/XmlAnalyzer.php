<?php

namespace Analyzer;

class XmlAnalyzer extends \Analyzer {

  public function __construct($location) {
    parent::__construct($location);
    $this->xml = simplexml_load_file($this->location);
  }

  public function getMax($xpaths, $property) {
    $paths = array();
    $maxproperty = 0;
    $maxxpath = NULL;
    foreach ($xpaths as $xpath) {
      $paths += $this->xml->xpath($xpath);
    }
    foreach ($paths as $path) {
      $pathproperty = $path->attributes()->{$property};
      if ((int) $pathproperty > $maxproperty) {
        print_r(array("$pathproperty > $maxproperty"));
        $maxproperty = $pathproperty;
        $maxxpath = $path;
      }
    }
    return $maxxpath;
  }

}
