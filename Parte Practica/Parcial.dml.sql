-- CIUDAD (10 registros)
INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
                                                                 (101, 'Medellín', '05001'),
                                                                 (102, 'Bogotá', '11001'),
                                                                 (103, 'Cali', '76001'),
                                                                 (104, 'Barranquilla', '08001'),
                                                                 (105, 'Cartagena', '13001'),
                                                                 (106, 'Bucaramanga', '68001'),
                                                                 (107, 'Pereira', '66001'),
                                                                 (108, 'Manizales', '17001'),
                                                                 (109, 'Santa Marta', '47001'),
                                                                 (110, 'Cúcuta', '54001');

-- USUARIO (10 registros, coherentes con ciudad)
INSERT INTO usuario (usuario_id, nombre, apellido, tipo_usuario, condicion_especial, ciudad_id) VALUES
                                                                                                    (201, 'Juan', 'Pérez', 'Cliente', 'Ninguna', 101),
                                                                                                    (202, 'María', 'Gómez', 'Empleado', 'Discapacidad visual', 102),
                                                                                                    (203, 'Carlos', 'López', 'Cliente', 'Adulto mayor', 103),
                                                                                                    (204, 'Daniela', 'Restrepo', 'Empleado', 'Ninguna', 101),
                                                                                                    (205, 'Andrés', 'Martínez', 'Cliente', 'Embarazo', 104),
                                                                                                    (206, 'Laura', 'Suárez', 'Empleado', 'Ninguna', 102),
                                                                                                    (207, 'Felipe', 'Torres', 'Cliente', 'Ninguna', 105),
                                                                                                    (208, 'Camila', 'Ramírez', 'Empleado', 'Movilidad reducida', 106),
                                                                                                    (209, 'Sebastián', 'Vargas', 'Cliente', 'Ninguna', 107),
                                                                                                    (210, 'Valentina', 'Hernández', 'Empleado', 'Ninguna', 108);
INSERT INTO empleado (empleado_id, usuario_id) VALUES
                                                   (301, 202),  -- María (Empleado)
                                                   (302, 204),  -- Daniela (Empleado)
                                                   (303, 206),  -- Laura (Empleado)
                                                   (304, 208),  -- Camila (Empleado)
                                                   (305, 210),  -- Valentina (Empleado)
                                                   (306, 201),  -- Juan (Cliente, lo metemos como empleado eventual)
                                                   (307, 203),  -- Carlos
                                                   (308, 205),  -- Andrés
                                                   (309, 207),  -- Felipe
                                                   (310, 209);  -- Sebastián
INSERT INTO cargo (cargo_id, nombre_cargo, empleado_id) VALUES
                                                            (401, 'Administrador de plataforma', 301),
                                                            (402, 'Analista de soporte', 301),

                                                            (403, 'Coordinador de operaciones', 302),
                                                            (404, 'Asistente de servicio', 302),

                                                            (405, 'Jefe de talento humano', 303),

                                                            (406, 'Analista junior', 304),
                                                            (407, 'Apoyo operativo', 304),

                                                            (408, 'Gerente regional', 305),

                                                            (409, 'Líder de turnos', 306),
                                                            (410, 'Auxiliar administrativo', 307);
INSERT INTO departamento (departamento_id, nombre_departamento, empleado_id) VALUES
                                                                                 (501, 'Atención al Cliente', 301),
                                                                                 (502, 'Soporte Técnico', 301),

                                                                                 (503, 'Operaciones', 302),
                                                                                 (504, 'Servicio al Cliente', 302),

                                                                                 (505, 'Recursos Humanos', 303),

                                                                                 (506, 'Logística', 304),
                                                                                 (507, 'Calidad', 304),

                                                                                 (508, 'Dirección General', 305),

                                                                                 (509, 'Gestión de Procesos', 306),
                                                                                 (510, 'Planeación Estratégica', 307);
INSERT INTO servicio (servicio_id, nombre_servicio, descripcion, estado) VALUES
                                                                             (601, 'Atención al Cliente', 'Soporte general para usuarios y consultas básicas.', 'Activo'),
                                                                             (602, 'Soporte Técnico', 'Resolución de problemas técnicos de plataforma.', 'Activo'),
                                                                             (603, 'Afiliaciones', 'Proceso de registro y validación de nuevos usuarios.', 'Activo'),
                                                                             (604, 'Reclamos y PQRS', 'Gestión de casos especiales y reclamaciones.', 'Activo'),
                                                                             (605, 'Gestión de Citas', 'Agendamiento de citas presenciales o virtuales.', 'Activo'),
                                                                             (606, 'Cobros y Pagos', 'Revisión de estados de cuenta y pagos.', 'Inactivo'),
                                                                             (607, 'Certificados', 'Generación de documentos oficiales.', 'Activo'),
                                                                             (608, 'Autenticaciones', 'Verificación de identidad.', 'Inactivo'),
                                                                             (609, 'Consultas Especializadas', 'Soporte avanzado para casos no comunes.', 'Activo'),
                                                                             (610, 'Atención Prioritaria', 'Atención preferencial a condiciones especiales.', 'Activo');
INSERT INTO turno (turno_id, fecha, hora_inicio, hora_fin, estado, usuario_id, empleado_id, servicio_id) VALUES
                                                                                                             (701, '2025-01-02', '08:00', '08:30', 'Completado', 201, 301, 601),
                                                                                                             (702, '2025-01-02', '08:30', '09:00', 'Completado', 203, 302, 604),
                                                                                                             (703, '2025-01-03', '09:00', '09:30', 'Cancelado', 205, 303, 605),
                                                                                                             (704, '2025-01-03', '09:30', '10:00', 'Pendiente', 207, 304, 602),
                                                                                                             (705, '2025-01-03', '10:00', '10:30', 'Completado', 209, 305, 610),
                                                                                                             (706, '2025-01-04', '10:30', '11:00', 'Pendiente', 202, 306, 603),
                                                                                                             (707, '2025-01-04', '11:00', '11:30', 'Completado', 204, 307, 607),
                                                                                                             (708, '2025-01-04', '11:30', '12:00', 'Completado', 206, 308, 609),
                                                                                                             (709, '2025-01-05', '14:00', '14:30', 'Cancelado', 208, 309, 608),
                                                                                                             (710, '2025-01-05', '14:30', '15:00', 'Pendiente', 210, 310, 601);
INSERT INTO medio (medio_id, tipo, usuario_id) VALUES
                                                   (801, 'Correo Electrónico', 201),
                                                   (802, 'WhatsApp', 201),

                                                   (803, 'SMS', 202),
                                                   (804, 'Correo Electrónico', 203),

                                                   (805, 'Telegram', 204),
                                                   (806, 'WhatsApp', 205),

                                                   (807, 'Correo Electrónico', 206),
                                                   (808, 'SMS', 207),

                                                   (809, 'WhatsApp', 208),
                                                   (810, 'Correo Electrónico', 209);
INSERT INTO notificacion (notificacion_id, fecha_envio, mensaje, estado, medio_id) VALUES
                                                                                       (901, '2025-01-02', 'Turno confirmado.', 'Enviado', 801),
                                                                                       (902, '2025-01-02', 'Recordatorio de turno.', 'Enviado', 802),
                                                                                       (903, '2025-01-03', 'Turno reprogramado.', 'Pendiente', 803),
                                                                                       (904, '2025-01-03', 'Encuesta de satisfacción.', 'Enviado', 804),
                                                                                       (905, '2025-01-04', 'Nuevo mensaje disponible.', 'Enviado', 805),
                                                                                       (906, '2025-01-04', 'Su turno fue cancelado.', 'Enviado', 806),
                                                                                       (907, '2025-01-04', 'Actualización de estado.', 'Pendiente', 807),
                                                                                       (908, '2025-01-05', 'Notificación administrativa.', 'Enviado', 808),
                                                                                       (909, '2025-01-05', 'Importante: información nueva.', 'Enviado', 809),
                                                                                       (910, '2025-01-06', 'Recordatorio de cita prioritaria.', 'Enviado', 810);
