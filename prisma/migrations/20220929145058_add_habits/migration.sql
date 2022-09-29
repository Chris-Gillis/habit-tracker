/*
  Warnings:

  - You are about to drop the `Users` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Users";

-- CreateTable
CREATE TABLE "User" (
    "user_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "Habit" (
    "habit_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,

    CONSTRAINT "Habit_pkey" PRIMARY KEY ("habit_id")
);

-- CreateTable
CREATE TABLE "HabitLog" (
    "habit_log_id" SERIAL NOT NULL,
    "habit_id" INTEGER NOT NULL,

    CONSTRAINT "HabitLog_pkey" PRIMARY KEY ("habit_log_id")
);

-- AddForeignKey
ALTER TABLE "Habit" ADD CONSTRAINT "Habit_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("user_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HabitLog" ADD CONSTRAINT "HabitLog_habit_id_fkey" FOREIGN KEY ("habit_id") REFERENCES "Habit"("habit_id") ON DELETE RESTRICT ON UPDATE CASCADE;
