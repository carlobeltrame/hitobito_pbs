# encoding: utf-8

#  Copyright (c) 2012-2018, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

CustomContent.seed_once(:key,
  { key: GroupMembershipMailer::CONTENT_GROUP_MEMBERSHIP,
    placeholders_required: 'actuator-name, group-link',
    placeholders_optional: 'recipient-name-with-salutation, recipient-name' },

  { key: Event::ParticipationMailer::CONTENT_CONFIRMATION_OTHER,
    placeholders_required: 'event-details, application-url',
    placeholders_optional: 'recipient-name-with-salutation, recipient-name' },

  { key: Event::ParticipationMailer::CONTENT_CANCELED_PARTICIPATION,
    placeholders_required: 'participant-name',
    placeholders_optional: 'event-name, canceled-at, application-url, event-details' },

  { key: Event::ParticipationMailer::CONTENT_REJECTED_PARTICIPATION,
    placeholders_required: 'participant-name',
    placeholders_optional: 'event-name, application-url, event-details' },

  { key: Event::ParticipationMailer::CONTENT_PARTICIPATION_ASSIGNED_FROM_WAITING_LIST,
    placeholders_required: 'participant-name',
    placeholders_optional: 'event-name, application-url, event-details, waiting-list-setter, leader-name' },

  { key: Event::ParticipationMailer::CONTENT_PARTICIPATION_REMOVED_FROM_WAITING_LIST,
    placeholders_required: 'participant-name',
    placeholders_optional: 'event-name, application-url, event-details, waiting-list-setter, leader-name' },

  { key: Event::CampMailer::CONTENT_CAMP_CREATED,
    placeholders_required: 'actuator-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_COACH_ASSIGNED,
    placeholders_required: 'actuator-name, advisor-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_SECURITY_ADVISOR_ASSIGNED,
    placeholders_required: 'actuator-name, advisor-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_AL_ASSIGNED,
    placeholders_required: 'actuator-name, advisor-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_SUBMIT_REMINDER,
    placeholders_required: 'camp-url',
    placeholders_optional: 'recipient-name-with-salutation, recipient-name, camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_SUBMIT,
    placeholders_required: 'camp-url',
    placeholders_optional: 'coach-name, camp-name, camp-state, camp-application-url' },

  { key: Event::CampMailer::CONTENT_PARTICIPANT_APPLIED,
    placeholders_required: 'participant-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: Event::CampMailer::CONTENT_PARTICIPANT_CANCELED,
    placeholders_required: 'participant-name, camp-url',
    placeholders_optional: 'camp-name, camp-state' },

  { key: BlackListMailer::CONTENT_BLACK_LIST_HIT,
    placeholders_required: 'black-list-person, joined-target',
    placeholders_optional: '' },

  { key: BlackListMailer::CONTENT_BLACK_LIST_ATTR_HIT,
    placeholders_required: 'black-list-person',
    placeholders_optional: '' },

  { key: CrisisMailer::CONTENT_CRISIS_TRIGGERED,
    placeholders_required: 'creator, group',
    placeholders_optional: 'date' },

  { key: CrisisMailer::CONTENT_CRISIS_ACKNOWLEDGED,
    placeholders_required: 'creator, group, acknowledger',
    placeholders_optional: 'date' },
)

group_membership_id = CustomContent.get(GroupMembershipMailer::CONTENT_GROUP_MEMBERSHIP).id
participation_confirmation_other_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_CONFIRMATION_OTHER).id
participation_canceled_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_CANCELED_PARTICIPATION).id
participation_rejected_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_REJECTED_PARTICIPATION).id
participation_assigned_from_waiting_list_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_PARTICIPATION_ASSIGNED_FROM_WAITING_LIST).id
participation_removed_from_waiting_list_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_PARTICIPATION_REMOVED_FROM_WAITING_LIST).id


camp_created_id = CustomContent.get(Event::CampMailer::CONTENT_CAMP_CREATED).id
camp_coach_assigned_id = CustomContent.get(Event::CampMailer::CONTENT_COACH_ASSIGNED).id
camp_security_advisor_assigned_id =
  CustomContent.get(Event::CampMailer::CONTENT_SECURITY_ADVISOR_ASSIGNED).id
camp_al_assigned_id = CustomContent.get(Event::CampMailer::CONTENT_AL_ASSIGNED).id
camp_submit_reminder_id = CustomContent.get(Event::CampMailer::CONTENT_SUBMIT_REMINDER).id
camp_submit_id = CustomContent.get(Event::CampMailer::CONTENT_SUBMIT).id
camp_participant_applied_id = CustomContent.get(Event::CampMailer::CONTENT_PARTICIPANT_APPLIED).id
camp_participant_canceled_id = CustomContent.
  get(Event::CampMailer::CONTENT_PARTICIPANT_CANCELED).id

black_list_hit_id = CustomContent.get(BlackListMailer::CONTENT_BLACK_LIST_HIT).id
black_list_attr_hit_id = CustomContent.get(BlackListMailer::CONTENT_BLACK_LIST_ATTR_HIT).id
crisis_triggered_id = CustomContent.get(CrisisMailer::CONTENT_CRISIS_TRIGGERED).id
crisis_acknowledged_id = CustomContent.get(CrisisMailer::CONTENT_CRISIS_ACKNOWLEDGED).id

_id =
  CustomContent.get(Event::ParticipationMailer::CONTENT_PARTICIPATION_REMOVED_FROM_WAITING_LIST).id

CustomContent::Translation.seed_once(:custom_content_id, :locale,
  { custom_content_id: group_membership_id,
    locale: 'de',
    label: 'Information bei neuer Gruppenzugehörigkeit',
    subject: "Aufnahme in Gruppe",
    body: "{recipient-name-with-salutation}<br/><br/>" \
          "{actuator-name} hat dich zur Gruppe {group-link} hinzugefügt.<br/><br/>" \
          "Bis bald!" },

  { custom_content_id: group_membership_id,
    locale: 'fr',
    label: 'Informations pour les nouveau membres du groupe',
    subject: 'Admission dans le groupe',
    body: "Salut {recipient-name}<br/><br/>" \
          "{actuator-name} t\'as ajouté au groupe {group-link}.<br/><br/>" \
          "A bientôt!" },

  { custom_content_id: group_membership_id,
    locale: 'en',
    label: 'Added to Group' },

  { custom_content_id: group_membership_id,
    locale: 'it',
    label: 'Informazioni per la nuova appartenenza al gruppo' },

  { custom_content_id: participation_confirmation_other_id,
    locale: 'de',
    label: 'Anlass: E-Mail Fremdanmeldebestätigung',
    subject: 'Du wurdest angemeldet',
    body: "{recipient-name-with-salutation}<br/><br/>" \
          "Du wurdest für folgenden Anlass angemeldet:<br/><br/>" \
          "{event-details}<br/><br/>" \
          "Falls du ein Login hast, kannst du deine Anmeldung unter folgender Adresse einsehen " \
          "und eine Bestätigung ausdrucken:<br/><br/>{application-url}" },

  { custom_content_id: participation_confirmation_other_id,
    locale: 'fr',
    label: "Événement: E-Mail de confirmation de l'inscription par une autre personne" },

  { custom_content_id: participation_confirmation_other_id,
    locale: 'en',
    label: 'Event: Application confirmation email for a different person' },

  { custom_content_id: participation_confirmation_other_id,
    locale: 'it',
    label: "Evento: E-mail per l'affermazione della inscrizione per una altra persona" },

  { custom_content_id: participation_canceled_id,
    locale: 'de',
    label: 'Anlass: E-Mail Abmeldung',
    subject: 'Kursabmeldung',
    body: "Hallo zusammen<br/><br/>" \
          "{participant-name} wurde per {canceled-at} vom Kurs {event-name} abgemeldet.<br/><br/>" \
          "Siehe {application-url}<br/><br/>" \
          "Kursdetails:<br/>{event-details}<br/>" },

  { custom_content_id: participation_canceled_id,
    locale: 'fr',
    label: "Événement: E-Mail d'annonce de départ" },

  { custom_content_id: participation_canceled_id,
    locale: 'en',
    label: 'Event: Unsubscription email' },

  { custom_content_id: participation_canceled_id,
    locale: 'it',
    label: "Evento: E-mail della notifica della partenza" },

  { custom_content_id: participation_rejected_id,
    locale: 'de',
    label: 'Anlass: E-Mail Ablehnung',
    subject: 'Kursablehnung',
    body: "Hallo zusammen<br/><br/>" \
          "{participant-name} wurde für den Kurs {event-name} abgelehnt.<br/><br/>" \
          "Siehe {application-url}<br/><br/>" \
          "Kursdetails:<br/>{event-details}<br/>" },

  { custom_content_id: participation_rejected_id,
    locale: 'fr',
    label: "Événement: E-Mail de refus" },

  { custom_content_id: participation_rejected_id,
    locale: 'en',
    label: 'Event: Rejection email' },

  { custom_content_id: participation_rejected_id,
    locale: 'it',
    label: "Evento: E-mail della notifica della rifiuto" },

  { custom_content_id: participation_assigned_from_waiting_list_id,
    locale: 'de',
    label: 'Anlass: E-Mail Teilnehmer/-in aus der Warteliste zugewiesen',
    subject: 'Zuweisung aus Warteliste',
    body: "Hallo {waiting-list-setter}<br/><br/>" \
          "{participant-name} wurde von {leader-name} von der Warteliste in den Kurs {event-name} übernommen.<br/><br/>" \
          "Siehe {application-url}<br/><br/>" \
          "Kursdetails:<br/>{event-details}<br/>" },

  { custom_content_id: participation_assigned_from_waiting_list_id,
    locale: 'fr',
    label: "Événement: E-Mail participant/-e de la liste d'attente assigné/-e" },

  { custom_content_id: participation_assigned_from_waiting_list_id,
    locale: 'en',
    label: 'Event: Email participant assigned from waiting list' },

  { custom_content_id: participation_assigned_from_waiting_list_id,
    locale: 'it',
    label: "Evento: E-mail partecipante dalla lista d'attesa assegnato" },

  { custom_content_id: participation_removed_from_waiting_list_id,
    locale: 'de',
    label: 'Anlass: E-Mail Teilnehmer/-in von der Warteliste entfernt',
    subject: 'Von der Warteliste entfernt',
    body: "Hallo {waiting-list-setter}<br/><br/>" \
          "{participant-name} wurde von {leader-name} von der Warteliste entfernt.<br/><br/>" \
          "Siehe {application-url}<br/><br/>" \
          "Kursdetails:<br/>{event-details}<br/>" },

  { custom_content_id: participation_removed_from_waiting_list_id,
    locale: 'fr',
    label: "Événement: E-Mail participant/-e supprimé de la liste d'attente" },

  { custom_content_id: participation_removed_from_waiting_list_id,
    locale: 'en',
    label: 'Event: Email participant removed from waiting list' },

  { custom_content_id: participation_removed_from_waiting_list_id,
    locale: 'it',
    label: "Evento: E-mail partecipante rimosso dalla lista d'attesa" },

  { custom_content_id: camp_created_id,
    locale: 'de',
    label: 'Lager: E-Mail Lager erstellt',
    subject: 'Lager wurde erstellt',
    body: 'Hallo<br><br>' \
          'Das Lager "{camp-name}" wurde von {actuator-name} erstellt:<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_created_id,
    locale: 'fr',
    label: 'Camp: E-Mail camp créé' },

  { custom_content_id: camp_created_id,
    locale: 'en',
    label: 'Camp: Email camp created' },

  { custom_content_id: camp_created_id,
    locale: 'it',
    label: 'Campo: E-Mail campo creato' },

  { custom_content_id: camp_coach_assigned_id,
    locale: 'de',
    label: 'Lager: E-Mail Coach zugeordnet',
    subject: 'Lager: Coach zugeordnet',
    body: 'Hallo<br><br>' \
          '{actuator-name} hat im Lager "{camp-name}" {advisor-name} als Coach definiert.<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_coach_assigned_id,
    locale: 'fr',
    label: 'Camp: E-Mail Coach assigné'},

  { custom_content_id: camp_coach_assigned_id,
    locale: 'en',
    label: 'Camp: Email Coach assigned'},

  { custom_content_id: camp_coach_assigned_id,
    locale: 'it',
    label: 'Campo: E-Mail Coach assegnato'},

  { custom_content_id: camp_security_advisor_assigned_id,
    locale: 'de',
    label: 'Lager: E-Mail Sicherheitsbereich Betreuung zugeordnet',
    subject: 'Lager: Sicherheitsbereich Betreuung zugeordnet',
    body: 'Hallo<br><br>' \
          '{actuator-name} hat im Lager "{camp-name}" {advisor-name} als Sicherheitsbereich ' \
          'Betreuung definiert.<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_security_advisor_assigned_id,
    locale: 'fr',
    label: 'Camp: E-Mail encadrement Domaine de la Sécurité assigné'},

  { custom_content_id: camp_security_advisor_assigned_id,
    locale: 'en',
    label: 'Camp: Email security scope support assigned'},

  { custom_content_id: camp_security_advisor_assigned_id,
    locale: 'it',
    label: 'Campo: E-Mail cura zona di sicurezza assegnato'},

  { custom_content_id: camp_al_assigned_id,
    locale: 'de',
    label: 'Lager: E-Mail Abteilungsleitung zugeordnet',
    subject: 'Lager: Abteilungsleitung zugeordnet',
    body: 'Hallo<br><br>' \
          '{actuator-name} hat im Lager "{camp-name}" {advisor-name} als Abteilungsleitung ' \
          'definiert.<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_al_assigned_id,
    locale: 'fr',
    label: 'Camp: E-Mail responsable de groupe assigné' },

  { custom_content_id: camp_al_assigned_id,
    locale: 'en',
    label: 'Camp: Email group officer assigned' },

  { custom_content_id: camp_al_assigned_id,
    locale: 'it',
    label: 'Campo: E-Mail Capo sezione assegnato' },

  { custom_content_id: camp_submit_reminder_id,
    locale: 'de',
    label: 'Lager: E-Mail Lager einreichen Erinnerung',
    subject: 'Lager: Lager einreichen Erinnerung',
    body: '{recipient-name-with-salutation}<br><br>' \
          'Das Lager "{camp-name}" muss noch an PBS eingereicht werden:<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_submit_reminder_id,
    locale: 'fr',
    label: 'Camp: E-Mail évoquer déposer de camp' },

  { custom_content_id: camp_submit_reminder_id,
    locale: 'en',
    label: 'Camp: Email submit camp reminder' },

  { custom_content_id: camp_submit_reminder_id,
    locale: 'it',
    label: 'Campo: E-Mail promemoria presentare campo' },

  { custom_content_id: camp_submit_id,
    locale: 'de',
    label: 'Lager: E-Mail Lager einreichen',
    subject: 'Einreichung Lager',
    body: 'Hallo<br><br>' \
          '{coach-name} reicht das Lager "{camp-name}" ein.<br><br>' \
          'PDF: {camp-application-url}<br>' \
          'Lager: {camp-url}<br>' },

  { custom_content_id: camp_submit_id,
    locale: 'fr',
    label: 'Camp: E-Mail déposer de camp' },

  { custom_content_id: camp_submit_id,
    locale: 'en',
    label: 'Camp: Email camp submit' },

  { custom_content_id: camp_submit_id,
    locale: 'it',
    label: 'Campo: E-Mail presentare campo' },

  { custom_content_id: camp_participant_applied_id,
    locale: 'de',
    label: 'Lager: E-Mail Teilnehmer-/in hat sich angemeldet',
    subject: 'Lager: Teilnehmer-/in hat sich angemeldet',
    body: 'Hallo<br><br>' \
          '{participant-name} hat sich für das Lager "{camp-name}" angemeldet:<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_participant_applied_id,
    locale: 'fr',
    label: 'Camp: E-Mail Participant/-e a enregistré' },

  { custom_content_id: camp_participant_applied_id,
    locale: 'en',
    label: 'Camp: E-Mail Participant has applied' },

  { custom_content_id: camp_participant_applied_id,
    locale: 'it',
    label: 'Campo: E-Mail Participante ha registrato'},

  { custom_content_id: camp_participant_canceled_id,
    locale: 'de',
    label: 'Lager: E-Mail Teilnehmer-/in hat sich abgemeldet',
    subject: 'Lager: Teilnehmer-/in hat sich abgemeldet',
    body: 'Hallo<br><br>' \
          '{participant-name} hat sich vom Lager "{camp-name}" abgemeldet:<br><br>' \
          '{camp-url}<br>' },

  { custom_content_id: camp_participant_canceled_id,
    locale: 'fr',
    label: 'Camp: E-Mail Participant/-e a disputer' },

  { custom_content_id: camp_participant_canceled_id,
    locale: 'en',
    label: 'Camp: Email Participant has unsubscribed'},

  { custom_content_id: camp_participant_canceled_id,
    locale: 'it',
    label: 'Campo: E-Mail Participante ha annullare' },

  { custom_content_id: black_list_hit_id,
    locale: 'de',
    label: 'Schwarze Liste: E-Mail Treffer',
    subject: 'Treffer auf Schwarzer Liste',
    body: 'Die Person {black-list-person} wurde bei {joined-target} hinzugefügt.' \
          '<br><br>Möglicherweise befindet sich diese Person auf der schwarzen Liste. ' \
          'Bitte prüfen und gegebenenfalls auf die Gruppe oder einen Referenzkontakt zugehen.' \
          '<br><br>Diese Nachricht wurde automatisch aus der MiData verschickt.'},

  { custom_content_id: black_list_hit_id,
    locale: 'fr',
    label: 'liste noire: E-Mail hit sur la liste noire' },

  { custom_content_id: black_list_hit_id,
    locale: 'en',
    label: 'black list: E-Mail hit on black list'},

  { custom_content_id: black_list_hit_id,
    locale: 'it',
    label: 'lista nera: E-Mail hit su lista nera' },

  { custom_content_id: black_list_attr_hit_id,
    locale: 'de',
    label: 'Schwarze Liste: E-Mail Treffer',
    subject: 'Treffer auf Schwarzer Liste',
    body: 'Die Person {black-list-person} wurde aktualisiert.' \
          '<br><br>Möglicherweise befindet sich diese Person auf der schwarzen Liste. ' \
          'Bitte prüfen und gegebenenfalls auf die Gruppe oder einen Referenzkontakt zugehen.' \
          '<br><br>Diese Nachricht wurde automatisch aus der MiData verschickt.'},

  { custom_content_id: black_list_attr_hit_id,
    locale: 'fr',
    label: 'liste noire: E-Mail hit sur la liste noire' },

  { custom_content_id: black_list_attr_hit_id,
    locale: 'en',
    label: 'black list: E-Mail hit on black list'},

  { custom_content_id: black_list_attr_hit_id,
    locale: 'it',
    label: 'lista nera: E-Mail hit su lista nera' },

  { custom_content_id: crisis_triggered_id,
    locale: 'de',
    label: 'Verantwortliche über Einleitung einer Krise informieren',
    subject: 'Krise wurde eingeleitet',
    body: '{creator} hat am {date} eine Krise in der Gruppe {group} eingeleitet.' },

  { custom_content_id: crisis_triggered_id,
    locale: 'fr',
    label: 'Informer les responsables de la crise déclenchée' },

  { custom_content_id: crisis_triggered_id,
    locale: 'en',
    label: 'Inform responsibles about triggered crisis' },

  { custom_content_id: crisis_triggered_id,
    locale: 'it',
    label: 'Informare i responsabili della crisi innescata' },

  { custom_content_id: crisis_acknowledged_id,
    locale: 'de',
    label: 'Verantwortliche über Quittierung einer Krise informieren',
    subject: 'Krise wurde quittiert',
    body: 'Die von {creator} am {date} in der Gruppe {group} eingeleitet Krise '\
          'wurde von {acknowledger} quittiert.'},

  { custom_content_id: crisis_acknowledged_id,
    locale: 'fr',
    label: 'Crise: E-Mail Informer la personne responsable de la reconnaissance' },

  { custom_content_id: crisis_acknowledged_id,
    locale: 'en',
    label: 'Crisis: E-Mail Inform the responsibles about acknowledgement' },

  { custom_content_id: crisis_acknowledged_id,
    locale: 'it',
    label: 'Crisi: E-Mail Informare la persona responsabile riguardo al riconoscimento' },

)
