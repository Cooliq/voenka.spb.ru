<?php
/** @var array $scriptProperties */
$scriptProperties['action'] = 'Auth';

/** @var modSnippet $snippet */
if ($snippet = $modx->getObject('modSnippet', array('name' => 'Office'))) {
    $snippet->_cacheable = false;
    $snippet->_processed = false;

    return $snippet->process($scriptProperties);
}