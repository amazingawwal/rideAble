/*
  Warnings:

  - Added the required column `disabilityType` to the `Passenger` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "public"."DisabilityType" AS ENUM ('Mobility', 'Sensory', 'Others');

-- AlterTable
ALTER TABLE "public"."Passenger" DROP COLUMN "disabilityType",
ADD COLUMN     "disabilityType" "public"."DisabilityType" NOT NULL;
