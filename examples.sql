-- ADD user
INSERT INTO users (username, password_hash) VALUES ('will', '006dc90467376b911362b82b0933388f075670b48d13f5bffdace5c88694676e');
INSERT INTO users (username, password_hash) VALUES ('tommy', 'e6fe09b9a125c5e31344f42f2df1156adfa00b32ca490f532cc38e5fb461c6b7');

-- Add application
INSERT INTO apps (name, description) VALUES ('git', 'Fast distributed version control system');
INSERT INTO apps (name, description) VALUES ('csc', 'C# .NET Compiler Platform');
INSERT INTO apps (name, description) VALUES ('gcc', 'GNU Collection Compiler');
INSERT INTO apps (name, description) VALUES ('make', 'GNU make');

---------------
-- Add devices
---------------

--CPUs:
INSERT INTO devices (type, name) VALUES (1, 'CPU#1');
INSERT INTO devices (type, name) VALUES (1, 'CPU#2');
INSERT INTO devices (type, name) VALUES (1, 'CPU#3');
INSERT INTO devices (type, name) VALUES (1, 'CPU#4');
INSERT INTO devices (type, name) VALUES (1, 'CPU#5');
INSERT INTO devices (type, name) VALUES (1, 'CPU#6');
INSERT INTO devices (type, name) VALUES (1, 'CPU#7');
INSERT INTO devices (type, name) VALUES (1, 'CPU#8');
INSERT INTO devices (type, name) VALUES (1, 'CPU#9');
INSERT INTO devices (type, name) VALUES (1, 'CPU#10');
INSERT INTO devices (type, name) VALUES (1, 'CPU#11');
INSERT INTO devices (type, name) VALUES (1, 'CPU#12');
INSERT INTO devices (type, name) VALUES (1, 'CPU#13');
INSERT INTO devices (type, name) VALUES (1, 'CPU#14');
INSERT INTO devices (type, name) VALUES (1, 'CPU#15');

INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1, 1, 'CPU#1', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (2, 2, 'CPU#2', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (3, 3, 'CPU#3', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (4, 4, 'CPU#4', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (5, 5, 'CPU#5', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (6, 6, 'CPU#6', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (7, 7, 'CPU#7', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (8, 8, 'CPU#8', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (9, 9, 'CPU#9', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (10, 10, 'CPU#10', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (11, 11, 'CPU#11', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (12, 12, 'CPU#12', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (13, 13, 'CPU#13', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (14, 14, 'CPU#14', 2, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (15, 15, 'CPU#15', 2, NULL);


--GPU
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#0', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#1', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#2', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#3', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#4', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#5', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#6', 'CPUID: nVidia, Arch: Kepler');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#7', 'CPUID: nVidia, Arch: Kepler');


INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1000, 16, 'SIMD#0', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1001, 17, 'SIMD#1', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1002, 18, 'SIMD#2', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1003, 19, 'SIMD#3', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1004, 20, 'SIMD#3', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1005, 21, 'SIMD#5', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1006, 22, 'SIMD#6', 9, NULL);
INSERT INTO workers (id, device_id, name, arch_id, current_job_id) VALUES (1007, 23, 'SIMD#7', 9, NULL);


--memory
INSERT INTO devices (type, name) VALUES (2, 'BANK#0');
INSERT INTO devices (type, name) VALUES (2, 'BANK#1');
INSERT INTO devices (type, name) VALUES (2, 'BANK#2');
INSERT INTO devices (type, name) VALUES (2, 'BANK#3');
INSERT INTO devices (type, name) VALUES (2, 'BANK#4');
INSERT INTO devices (type, name) VALUES (2, 'BANK#5');
INSERT INTO devices (type, name) VALUES (2, 'BANK#6');
INSERT INTO devices (type, name) VALUES (2, 'BANK#7');


--storage
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#0', 'Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#1', 'Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#2', 'Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#3', 'Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#4', 'Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#5', 'Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#6', 'Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#7', 'Type: HDD');



--------------
-- Create job
--------------

--Create execution context
INSERT INTO contexts (id, os_type) VALUES (1, ( SELECT id from os_type where name = 'linux'));

--Bind free memory to context:
INSERT INTO devices_contexts VALUES( (select id from devices 
WHERE type = (select id from device_type where name='memory')
    AND id NOT IN (select device_id from devices_contexts) LIMIT 1), 1);

--Create jobs
INSERT INTO jobs (id, app_id, user_id, context_id) 
VALUES (1,
 (select id from apps where name='git'),
 (select id from users where username='will'), 1);


INSERT INTO jobs (id, app_id, user_id, context_id) 
VALUES (2,
 (select id from apps where name='csc'),
 (select id from users where username='will'), 1);

INSERT INTO jobs (id, app_id, user_id, context_id) 
VALUES (3,
 (select id from apps where name='csc'),
 (select id from users where username='tommy'), 1);


--Run jobs on free worker
UPDATE workers
SET current_job_id = 1
where
    id = (select id from workers where arch_id = 2 AND current_job_id IS NULL LIMIT 1);
INSERT INTO devices_contexts VALUES ( (SELECT id from workers where current_job_id = 1), 1);


UPDATE workers
SET current_job_id = 3
where
    id = (select id from workers where arch_id = 2 AND current_job_id IS NULL LIMIT 1);
INSERT INTO devices_contexts VALUES ( (SELECT id from workers where current_job_id = 2), 1);



UPDATE workers
SET current_job_id = 2
where
    id = (select id from workers where arch_id = 2 AND current_job_id IS NULL LIMIT 1);
INSERT INTO devices_contexts VALUES ( (SELECT id from workers where current_job_id = 3), 1);




-- Show users 

select * from users;


-- Change password

update users
set password_hash = '3388f075670b48d13f5bffdace5c88694676e006dc90467376b911362b82b093'
where id = 2;


-- Show jobs data:

    select contexts.id, jobs.id, username, apps.name, apps.description
    from jobs 
    left join users on user_id = users.id
    left join apps on app_id = apps.id
    left join contexts on jobs.context_id = contexts.id;


-- Show devices by context:

    select  devices.name, device_type.name
    from contexts
    left join devices_contexts on devices_contexts.context_id = contexts.id
    left join devices on devices.id = device_id
    left join device_type on devices.type = device_type.id
    where contexts.id = 1;


