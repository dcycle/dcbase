<?php

use Analyzer\XmlAnalyzer\PdependSummaryAnalyzer;

class Simplifier {
  function simplify() {
    $info = $this->getSimplifiedDataArray('/raw/raw');
    $this->filePutCsv('/simplified/analysis.csv', $info);
  }

  function filePutCsv($location, $info) {
    $list = array (
      array_keys($info),
      array_values($info),
    );

    $fp = fopen($location, 'w');

    foreach ($list as $fields) {
      fputcsv($fp, $fields);
    }

    fclose($fp);
  }

  function getSimplifiedDataArray($location) {
    $info = array();
    foreach ($this->getRawDataAnalyzers($location) as $analyzer) {
      $info += $analyzer->getAnalysis();
    }
    return $info;
  }

  function getRawDataAnalyzers($location) {
    return array(
      new PdependSummaryAnalyzer($location),
    );
  }

}
