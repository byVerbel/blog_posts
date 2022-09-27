class ApunSelfEvaluation < ApplicationRecord
  belongs_to :blog

  QUESTIONS = {
    question1: 'Con el trabajo que presentaré a los monitores y al profesor ¿logré mejorar mi lecto/escritura?',
    question2: 'Con el trabajo que presentaré a los monitores y al profesor ¿pude aplicar/expandir/potenciar/reafirmar mi creatividad?',
    question3: 'Con el trabajo que presentaré a los monitores y al profesor ¿pude superar mis temores de hablar ante otros?',
    question4: 'Con el trabajo que presentaré a los monitores y al profesor ¿pude exponer/defender mis ideas con respecto al tema tratado (por otros o por mí) en la conferencia anterior de la Cátedra?',
    question5: 'Con el trabajo que presentaré a los monitores y al profesor ¿mejoré/aumenté mi control emocional?',
    question6: 'Con el trabajo que presentaré a los monitores y al profesor ¿mejoré/aumenté la autorregulación/autoconocimiento/autocontrol de mi aprendizaje?',
    question7: 'La realización de este trabajo ¿me satisfizo?',
    question8: 'La realización de este trabajo ¿potenció mi espíritu crítico?',
    question9: 'La realización de este trabajo ¿mejoró/aumentó mi autoestima?',
    question10: '¿La realización de este trabajo despertó en mí nuevas preguntas o inquietudes?',
    question11: '¿Voy a entregar este trabajo sólo después de sentirme completamente satisfecho de su realización?',
    question12: '¿Cómo podría mejorar este trabajo que acabo de realizar?',
    question13: '¿Cómo aplicarlo/emplearlo en otras asignaturas de mi programa curricular? ¿en un problema real de mi vida/ mi profesión?',
    question14: '¿Cuáles fueron los principales obstáculos que tuve para desarrollar este trabajo? ¿cómo los solucionaría y anticiparía en situaciones futuras?'
  }
end
