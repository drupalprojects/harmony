<?php

/**
 * Implements hook_form_FORM_ID_alter()
 */
function harmony_form_install_select_profile_form_alter(&$form, $form_state) {
  // Set the Harmony option as default and move up the list.
  $form['profile']['#default_value'] = 'harmony';
  $form['profile']['#options'] = array_merge(array_splice($form['profile']['#options'], -1), $form['profile']['#options']);
}
