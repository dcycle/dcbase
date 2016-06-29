<?php

namespace Analyzer\XmlAnalyzer;
use Analyzer\XmlAnalyzer;

class PdependSummaryAnalyzer extends XmlAnalyzer {
  public function getAnalysis() {
    $max = $this->getMax(array('/metrics/package/class/method', '/metrics/package/function'), 'lloc');

    $info['longest-function-lloc'] = (int) $max->attributes()->lloc;
    $info['longest-function-name'] = (string) $max->attributes()->name;

    return $info;
  }

  public function getFileLocation() {
    return 'pdepend/summary-xml.xml';
  }

}
