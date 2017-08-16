# Overtime App
 
 ## Key requirement: company needs documentation that salaried employees did or did not get overtime each week
 
 ## Models
 x Post -> date:date rationale:text
 x User -> Devise
 x AdminUser -> STI
 
 ## Features:
 - Approval Workflow
 - SMS Sending -> link to approval or overtime input
 - Administrate admin dashboard+- Email summary to managers for approval
 - Needs to be documented if employee did not log overtime
 x Block non admin and guest users
 
 ## UI:
  x Bootstrap -> formatting
  Icons from Font Awesome

  ## Refactor Todo

- Aff full_name method for users
  - Refactor user association integration test in post_spec

## Todo:
  1. add status to Post
    db migration
  2. status needs to be required
  3. Status has default value
  4. Implement approval stages
  5. locking