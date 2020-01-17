-- ADD user
INSERT INTO users (username, password_hash) VALUES ('will', '006dc90467376b911362b82b0933388f075670b48d13f5bffdace5c88694676e');
INSERT INTO users (username, password_hash) VALUES ('tommy', 'e6fe09b9a125c5e31344f42f2df1156adfa00b32ca490f532cc38e5fb461c6b7');

-- Add application
INSERT INTO apps (name, description) VALUES ('git', 'Fast distributed version control system');
INSERT INTO apps (name, description) VALUES ('csc', 'C# .NET Compiler Platform');
INSERT INTO apps (name, description) VALUES ('gcc', 'GNU Collection Compiler');
INSERT INTO apps (name, description) VALUES ('make', 'GNU make');

-- Add workers
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (0, 'CPU#0', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1, 'CPU#1', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (2, 'CPU#2', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (3, 'CPU#3', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (4, 'CPU#4', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (5, 'CPU#5', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (6, 'CPU#6', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (7, 'CPU#7', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (8, 'CPU#8', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (9, 'CPU#9', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (10, 'CPU#10', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (11, 'CPU#11', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (12, 'CPU#12', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (13, 'CPU#13', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (14, 'CPU#14', 2, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (15, 'CPU#15', 2, NULL);

INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1000, 'SIMD#0', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1001, 'SIMD#1', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1002, 'SIMD#2', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1003, 'SIMD#3', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1004, 'SIMD#4', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1005, 'SIMD#5', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1006, 'SIMD#6', 9, NULL);
INSERT INTO workers (id, name, arch_id, current_job_id) VALUES (1007, 'SIMD#7', 9, NULL);



---------------
-- Add devices
---------------

--CPUs:
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#0', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:0');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#1', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:1');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#2', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:2');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#3', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:3');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#4', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:4');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#5', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:5');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#6', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:6');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#7', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:7');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#8', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:8');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#9', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:9');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#10', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:10');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#11', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:11');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#12', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:12');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#13', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:13');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#14', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:14');
INSERT INTO devices (type, name, data) VALUES (1, 'CPU#15', 'CPUID: GenuineAMD, Arch:x64, Speed: 5GHz, Worker_id:15');

--memory
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#0', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#1', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#2', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#3', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#4', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#5', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#6', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');
INSERT INTO devices (type, name, data) VALUES (2, 'BANK#7', 'Size: 16384MB, Type: DDR4, Speed: 2133MT/s');


--storage
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#0', 'Size: 16384GB, Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#1', 'Size: 16384GB, Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#2', 'Size: 16384GB, Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#3', 'Size: 16384GB, Type: SSD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#4', 'Size: 16384GB, Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#5', 'Size: 16384GB, Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#6', 'Size: 16384GB, Type: HDD');
INSERT INTO devices (type, name, data) VALUES (3, 'STORAGE#7', 'Size: 16384GB, Type: HDD');

--GPU
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#0', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1000');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#1', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1001');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#2', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1002');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#3', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1003');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#4', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1004');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#5', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1005');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#6', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1006');
INSERT INTO devices (type, name, data) VALUES (5, 'GPU#7', 'CPUID: nVidia, Arch: Kepler, Speed: 3GHz, Worker_id:1007');



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

UPDATE workers
SET current_job_id = 3
where
    id = (select id from workers where arch_id = 2 AND current_job_id IS NULL LIMIT 1);

UPDATE workers
SET current_job_id = 2
where
    id = (select id from workers where arch_id = 2 AND current_job_id IS NULL LIMIT 1);


--Add workers to device list:
INSERT INTO devices_contexts VALUES ( (SELECT id from workers where current_job_id = 1), 1);


-- Show user jobs:

    select jobs.id, username, apps.name, apps.description 
    from jobs 
    left join users on user_id = users.id
    left join apps on app_id = apps.id;